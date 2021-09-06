cask "pagico" do
  version "9.10,20210723"
  sha256 "37c386532198f02480d1f71ee1d7c01d5ca28cdde5906bec12f6fd473a8d8ac1"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.after_comma}.dmg"
  name "Pagico"
  desc "Manage all your tasks, files, and notes"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.mac.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
