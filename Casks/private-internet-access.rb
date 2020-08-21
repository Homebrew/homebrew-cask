cask "private-internet-access" do
  version "2.3-05344"
  sha256 "7b59dbb09bad535efa1992774b119c376e10d0f09fd383e856a432d848909868"

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
