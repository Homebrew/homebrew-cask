cask "macx-dvd-ripper-pro" do
  version "6.5.4,20201015"
  sha256 "fc7ad20e55eedac7f1c864658ef8fe65e89a8bb227a68a829c06a83e1882f81a"

  url "https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_sizeandmodified.cgi?url=https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg",
          must_contain: "GMT"
  name "MacX DVD Ripper Pro"
  desc "DVD ripping application"
  homepage "https://www.macxdvd.com/mac-dvd-ripper-pro/"

  app "MacX DVD Ripper Pro.app"
end
