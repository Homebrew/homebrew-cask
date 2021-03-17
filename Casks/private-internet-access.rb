cask "private-internet-access" do
  version "2.7.1-06182"
  sha256 "2f2f9ab9f532d30d1a0d3dec6bf3a0e777d03e5040f5f4c945af014b1f2c6ed7"

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
