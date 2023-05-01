cask "flying-carpet" do
  version "7.0"
  sha256 "ee8ca65c1401d2e81f15aff22197e6931e2a2293f83a5f6732ac14e4290b1bed"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version}/macOS_FlyingCarpet_#{version}.0_universal.dmg"
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
