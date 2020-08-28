cask "pagico" do
  version "9.5.20200826"
  sha256 "2ee1b064bd8443ddf0778e0b2f1292612b732ac56b0dedcd9df19d25f5d8ca7b"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
