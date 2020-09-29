cask "macx-dvd-ripper-pro" do
  version "6.5.3,20200927"
  sha256 "049e143d60b42b6e77b590749a9d258d9a005a7e182ee155a35e419080f6dfa0"

  url "https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filesize.cgi?url=https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg"
          must_contain: ""
  name "MacX DVD Ripper Pro"
  desc "DVD ripping application"
  homepage "https://www.macxdvd.com/mac-dvd-ripper-pro/"

  app "MacX DVD Ripper Pro.app"
end
