cask "openboardview" do
  version "8.0"
  sha256 "c854a721709701afd428df8e2b00e1e66818b0cac1998e7513d7f23c73347b5b"

  url "https://github.com/OpenBoardView/OpenBoardView/releases/download/#{version}/OpenBoardView-#{version}-Darwin.dmg",
      verified: "github.com/OpenBoardView/OpenBoardView/"
  name "OpenBoardView"
  homepage "https://openboardview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "openboardview.app"
end
