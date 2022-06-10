cask "openboardview" do
  version "9.0.3"
  sha256 "811b61906614317ac8ffa0e0287abc5c5fe6cb6316f9a6cd1cdfc1620495d178"

  url "https://github.com/OpenBoardView/OpenBoardView/releases/download/#{version}/OpenBoardView-#{version}-Darwin.dmg",
      verified: "github.com/OpenBoardView/OpenBoardView/"
  name "OpenBoardView"
  desc "File viewer for .brd files"
  homepage "https://openboardview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "openboardview.app"
end
