cask "flying-carpet" do
  version "8.0.1"
  sha256 "8002868545273069959a3343146212bbf16587e9727dcd8dbd604e160caa983f"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version}/macOS_FlyingCarpet_#{version}_universal.dmg"
  name "Flying Carpet"
  desc "File transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FlyingCarpet.app"

  zap trash: [
    "~/Library/Caches/dev.spiegl",
    "~/Library/Preferences/com.yourcompany.flyingcarpet.plist",
    "~/Library/Preferences/dev.spiegl.plist",
    "~/Library/Saved Application State/com.yourcompany.flyingcarpet.savedState",
    "~/Library/Saved Application State/dev.spiegl.savedState",
    "~/Library/WebKit/dev.spiegl",
  ]
end
