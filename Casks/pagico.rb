cask "pagico" do
  version "10.0,20211124"
  sha256 "cc44123c40a7cc844211000c2f1bfc08438c00cd7803c4d88b557c74b56c4c46"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.after_comma}.dmg"
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
