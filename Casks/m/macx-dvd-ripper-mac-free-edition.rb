cask "macx-dvd-ripper-mac-free-edition" do
  version "4.2.5,20170726"
  sha256 :no_check

  url "https://www.macxdvd.com/download/converter_ripper_org/macx-dvd-ripper-mac-free-edition.dmg"
  name "MacX DVD Ripper Mac Free Edition"
  desc "DVD ripping application"
  homepage "https://www.macxdvd.com/dvd-ripper-mac-free/"

  disable! date: "2024-07-15", because: "is 32-bit only"

  app "MacX DVD Ripper Mac Free Edition.app"
end
