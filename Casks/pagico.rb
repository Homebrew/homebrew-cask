cask "pagico" do
  version "10,20220915"
  sha256 "925acf6e3ddebd1046cc10be68cbf5149d8bb87bfc668b47493d7d91afe4d798"

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
