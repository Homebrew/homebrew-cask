cask "pagico" do
  version "9.10,20210703"
  sha256 "b24fd60398ab15c0a48eb5354bdb9f9540b38812b45b3153f00c9d922de54d55"

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
