cask "binance" do
  version :latest
  sha256 :no_check

  url "https://ftp.binance.com/electron-desktop/mac/production/binance.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "http://binance.com/"

  app "Binance.app"
end
