cask "openboardview" do
  version "8.95.0"
  sha256 "12f4af14dc873b270d3d1494290fd4be5633cb4727ed89423b784bfc70360da2"

  url "https://github.com/OpenBoardView/OpenBoardView/releases/download/#{version}/OpenBoardView-#{version}-Darwin.dmg",
      verified: "github.com/OpenBoardView/OpenBoardView/"
  appcast "https://github.com/OpenBoardView/OpenBoardView/releases.atom"
  name "OpenBoardView"
  homepage "https://openboardview.org/"

  app "openboardview.app"
end
