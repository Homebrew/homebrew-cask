cask "activedock" do
  version "2.63,2063"
  sha256 "05987f06247ec52d1abd626c28cd74f93c0793e7e8702d12f8c8072a8aac026e"

  # macplus-software.com/ was verified as official when first introduced to the cask
  url "https://macplus-software.com/downloads/ActiveDock.zip"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
