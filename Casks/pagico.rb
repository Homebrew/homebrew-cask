cask "pagico" do
  version "9.5.20200909"
  sha256 "fb020f35ffac60740a53cce17dc99954cf1c5a301e5984d5872c72cd36bc6c78"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
