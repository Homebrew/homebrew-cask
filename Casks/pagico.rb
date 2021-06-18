cask "pagico" do
  version "9.10,20210518"
  sha256 "df3a7a150381d66b5c5eb5ebe7bac2ea1c230fcfe0cfa2c87457d1b92e7e2f12"

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
