cask "pagico" do
  version "9.9,20210326"
  sha256 "4d6183cd8152e664019b12065bd8fef96362eb3554cc25a88faac1c5fec8e6e7"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.after_comma}.dmg"
  name "Pagico"
  homepage "https://www.pagico.com/"

  livecheck do
    url "https://www.pagico.com/api/pagico#{version.major}.mac.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
