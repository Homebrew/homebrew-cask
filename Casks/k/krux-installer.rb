cask "krux-installer" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.20"
  sha256 arm:   "b18128e4f7666fa39c61198c42aee83fccf2f2abd8c9d161ee5ff498ef9b9ac9",
         intel: "a20407ddcc15384a939be5528bdbc2f4ac711531377111d413a81eadadf12496"

  url "https://github.com/selfcustody/krux-installer/releases/download/v#{version}/krux-installer_#{version}_#{arch}.dmg"
  name "Krux Installer"
  desc "GUI based application to flash Krux firmware on K210 based devices"
  homepage "https://github.com/selfcustody/krux-installer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "krux-installer.app"

  zap trash: [
    "~/.config/krux-installer",
    "~/.kivy",
    "~/.local/krux-installer/",
  ]
end
