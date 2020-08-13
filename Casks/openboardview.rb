cask "openboardview" do
  version "8.0"
  sha256 "c854a721709701afd428df8e2b00e1e66818b0cac1998e7513d7f23c73347b5b"

  # github.com/OpenBoardView/OpenBoardView/ was verified as official when first introduced to the cask
  url "https://github.com/OpenBoardView/OpenBoardView/releases/download/#{version}/OpenBoardView-#{version}-Darwin.dmg"
  appcast "https://github.com/OpenBoardView/OpenBoardView/releases.atom"
  name "OpenBoardView"
  homepage "https://openboardview.org/"

  app "openboardview.app"
end
