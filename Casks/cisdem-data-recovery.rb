cask "cisdem-data-recovery" do
  version "6.4.0"
  sha256 "3624f99d258fb7f6af77f5226d8528b08dbc5840069ef38be3c681efcd146cc2"

  url "https://download.cisdem.com/cisdem-datarecovery.dmg"
  appcast "https://www.cisdem.com/data-recovery-mac/release-notes.html"
  name "Cisdem Data Recovery"
  homepage "https://www.cisdem.com/data-recovery-mac.html"

  depends_on macos: ">= :sierra"

  app "Cisdem Data Recovery.app"
end
