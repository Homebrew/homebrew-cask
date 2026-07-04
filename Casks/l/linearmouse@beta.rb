cask "linearmouse@beta" do
  version "0.11.3-beta.6"
  sha256 "0177590c34d5ee4a2cb1c8e98701a52aec7a09e8c9def5fa254d075a77561a9e"

  url "https://dl.linearmouse.org/v#{version}/LinearMouse.dmg"
  name "LinearMouse"
  desc "Customise mouse behavior"
  homepage "https://linearmouse.org/"

  livecheck do
    url "https://linearmouse.app/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  conflicts_with cask: "linearmouse"
  depends_on :macos

  app "LinearMouse.app"

  uninstall quit:       "com.lujjjh.LinearMouse",
            login_item: "LinearMouse"

  zap trash: [
    "~/.config/linearmouse",
    "~/Library/Preferences/com.lujjjh.LinearMouse.plist",
  ]
end
