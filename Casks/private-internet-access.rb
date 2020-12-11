cask "private-internet-access" do
  version "2.6.1-05824"
  sha256 "681f64f54fe852441ca2a96ffb250ec27e2064cbc40f34a1a9b108ca73a92c4a"

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
