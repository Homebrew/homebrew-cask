cask "entry" do
  version "2.1.24"
  sha256 "87e9e4a6b1760c8831f0a5220e0c9aedac31c01927589e1c615b3cf47c664989"

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
