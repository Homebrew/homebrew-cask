cask "macx-dvd-ripper-pro" do
  version "6.5.5,20210105"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_sizeandmodified.cgi?url=https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg",
          must_contain: "GMT"
  name "MacX DVD Ripper Pro"
  desc "DVD ripping application"
  homepage "https://www.macxdvd.com/mac-dvd-ripper-pro/"

  app "MacX DVD Ripper Pro.app"
end
