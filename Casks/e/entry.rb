cask "entry" do
  version "2.1.30"
  sha256 "7653fd298f52010f0240cde143b69699f05ed18a4317bbefbb92de64aba6880d"

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
