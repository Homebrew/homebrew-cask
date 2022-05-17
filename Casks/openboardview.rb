cask "openboardview" do
  version "9.0.0"
  sha256 "2ec52824758d7592d1131de27b808d924f294f0cad9fc57a3cce9fda762f3caf"

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
