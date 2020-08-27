cask "private-internet-access" do
  version "2.3.1-05354"
  sha256 "b6a459ca12a92e8d1907a82126fe92b27e54f1edbb4ce0468ee24b5c13fa6e05"

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  appcast "https://www.privateinternetaccess.com/pages/download"
  name "Private Internet Access"
  homepage "https://www.privateinternetaccess.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "Private Internet Access Installer.app"

  postflight do
    set_ownership "~/.pia_manager"
  end

  uninstall delete: "/Applications/Private Internet Access.app"

  zap trash: "~/.pia_manager"
end
