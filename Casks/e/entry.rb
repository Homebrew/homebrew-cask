cask "entry" do
  version "2.1.37"
  sha256 "4258000ac35d502127e68c6730f438673ff96172fc4b28d5b0d0bd78d95f2a01"

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

  depends_on :macos

  pkg "Entry-#{version}.pkg"

  uninstall pkgutil: "org.playentry.entry"

  zap trash: [
    "~/Library/Application Support/Entry",
    "~/Library/Application Support/entry-hw",
    "~/Library/Preferences/org.playentry.entry.plist",
    "~/Library/Saved Application State/org.playentry.entry.savedState",
  ]
end
