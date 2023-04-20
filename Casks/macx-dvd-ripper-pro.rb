cask "macx-dvd-ripper-pro" do
  version "6.7.1"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg"
  name "MacX DVD Ripper Pro"
  desc "DVD ripping application"
  homepage "https://www.macxdvd.com/mac-dvd-ripper-pro/"

  livecheck do
    url :homepage
    regex(/Version:\s+(\d+(?:\.\d+)*)/i)
  end

  app "MacX DVD Ripper Pro.app"
end
