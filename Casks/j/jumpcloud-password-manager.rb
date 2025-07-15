cask "jumpcloud-password-manager" do
  arch arm: "arm64/"

  version "3.3.17"
  sha256 arm:   "e9d66b4f4a770cd63879364c7e522c0b9a6a1f8c37596a2fc01ba704690a191d",
         intel: "54c5de3f39d87703c330ded03ddd3d0aa046a2fad3e0141acdce569a6e31cc8e"

  url "https://cdn.pwm.jumpcloud.com/DA/release/#{arch}JumpCloud-Password-Manager-#{version}.dmg"
  name "JumpCloud Password Manager"
  desc "Password management tool that provides authentication, sharing and credentials"
  homepage "https://cdn.pwm.jumpcloud.com/web/download.html#desktop"

  livecheck do
    url "https://cdn.pwm.jumpcloud.com/DA/release/#{arch}latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "JumpCloud Password Manager.app"

  zap trash: [
    "~/Library/Application Support/JumpCloud Password Manager",
    "~/Library/Preferences/com.jumpcloud.pwm.desktop.live.plist",
    "~/Library/Saved Application State/com.jumpcloud.pwm.desktop.live.savedState",
  ]
end
