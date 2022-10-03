cask "pagico" do
  version "10,20221002"
  sha256 "e71e1006c3f4c24767324cd448a67c6a8dabe930a7ef98f6b66db5b3ea8180fc"

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
