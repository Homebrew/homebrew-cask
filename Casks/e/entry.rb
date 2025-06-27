cask "entry" do
  version "2.1.28"
  sha256 "d6a9e1aa692ad30fdf9b7424dd966982008c2870b416a7c6b35998eeffeec082"

  url "https://playentry.org/uploads/data/installers/Entry-#{version}.pkg"
  name "entry"
  desc "Block-based coding platform"
  homepage "https://playentry.org/"

  livecheck do
    url "https://playentry.org/api/checkVersion", post_json: {
      category: "offline",
      version:  version,
    }
    strategy :json do |json|
      json["recentVersion"]
    end
  end

  pkg "Entry-#{version}.pkg"

  uninstall pkgutil: "org.playentry.entry"

  zap trash: [
    "~/Library/Application Support/Entry",
    "~/Library/Application Support/entry-hw",
    "~/Library/Preferences/org.playentry.entry.plist",
    "~/Library/Saved Application State/org.playentry.entry.savedState",
  ]
end
