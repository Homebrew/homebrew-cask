cask "jumpcloud-password-manager" do
  arch arm: "arm64/"

  version "3.3.52"
  sha256 arm:   "26172dbe77b98b10f8012330962d07eebcebe9f280f71165b5d0b53d43e3ad1c",
         intel: "1fd876925bee945ac4876cd13e07035f6f8c132f1b97040783c5df912964ab69"

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
