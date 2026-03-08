cask "entry" do
  version "2.1.32"
  sha256 "a108c329cc00b208cf2f49af46a21cf8f5dff02f37eb3739a290809d99407e81"

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
