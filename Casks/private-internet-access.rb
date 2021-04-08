cask "private-internet-access" do
  version "2.8.1-06335"
  sha256 "88a51130e28c2139f8f3a9f49faedaa1089d4c999e0e39ee54b87610d10a4f45"

  url "https://installers.privateinternetaccess.com/download/pia-macos-#{version}.zip"
  appcast "https://www.privateinternetaccess.com/pages/download"
  name "Private Internet Access"
  desc "VPN client"
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
