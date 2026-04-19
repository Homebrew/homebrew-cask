cask "linearmouse@beta" do
  version "0.11.0-beta.7"
  sha256 "bedd5ddcc9af972d84beb6e9c7dfd0a85849cffec26ad7536f95176aed259f10"

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

  app "LinearMouse.app"

  uninstall quit:       "com.lujjjh.LinearMouse",
            login_item: "LinearMouse"

  zap trash: [
    "~/.config/linearmouse",
    "~/Library/Preferences/com.lujjjh.LinearMouse.plist",
  ]
end
