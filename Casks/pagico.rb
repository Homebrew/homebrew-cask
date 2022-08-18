cask "pagico" do
  version "10,20220810"
  sha256 "c9f2296fd67a862fe068a4dc733133acf3d25c1c828d8b2ea8044830aaafa16d"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.csv.second}.dmg"
  name "Pagico"
  desc "Manage all your tasks, files, and notes"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.macOS.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Pagico.app"
end
