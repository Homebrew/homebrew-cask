cask "pagico" do
  version "10,20221213"
  sha256 "5fb60d1c80ac36adc1bad9f7f5a1a8c6f3a3b94efbc366302dd43a79b0e3e28e"

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
