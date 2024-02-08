cask "openboardview" do
  version "9.95.0"
  sha256 "eeb3ac2a453215c38a21467cac9bb562895e3b283b0dc0140aed2ef31d08b253"

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
