cask "recut" do
  version "1.1.3,366"
  sha256 "0b343f66095e2e5cd9c008256f47f62ed95473fc0d5da410f8bc4ba5f93b86aa"

  url "https://updates.getrecut.com/Recut-#{version.before_comma}.dmg"
  name "Recut"
  desc "Remove silence from videos and automatically generate a cut list"
  homepage "https://getrecut.com/"

  livecheck do
    url "https://updates.getrecut.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Recut.app"

  zap trash: [
    "~/Library/Caches/co.tinywins.recut",
    "~/Library/Preferences/co.tinywins.recut.plist",
    "~/Library/Saved Application State/co.tinywins.recut.savedState",
  ]
end
