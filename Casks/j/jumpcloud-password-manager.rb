cask "jumpcloud-password-manager" do
  arch arm: "arm64/"

  version "3.3.55"
  sha256 arm:   "96211cdebd13f37de5da81bbff115d244c1b08d938fbf11ed52465efd65cf12c",
         intel: "ab565578ca80e8ad6c7bf30c826f169f8d92e2f66fbeea4d9c0bcba6466cd9a3"

  url "https://cdn.pwm.jumpcloud.com/DA/release/#{arch}JumpCloud-Password-Manager-#{version}.dmg"
  name "JumpCloud Password Manager"
  desc "Password management tool that provides authentication, sharing and credentials"
  homepage "https://cdn.pwm.jumpcloud.com/web/download.html#desktop"

  livecheck do
    url "https://cdn.pwm.jumpcloud.com/DA/release/#{arch}latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "JumpCloud Password Manager.app"

  zap trash: [
    "~/Library/Application Support/JumpCloud Password Manager",
    "~/Library/Preferences/com.jumpcloud.pwm.desktop.live.plist",
    "~/Library/Saved Application State/com.jumpcloud.pwm.desktop.live.savedState",
  ]
end
