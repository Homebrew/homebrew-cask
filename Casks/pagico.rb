cask "pagico" do
  version "10,20220621"
  sha256 "596f06f5e91ab4863003321831a2fafa04ea4a01641e31e3b7a5334f56ce9855"

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
