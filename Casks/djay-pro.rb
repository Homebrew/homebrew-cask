cask "djay-pro" do
  version "2.2.4,202008111605"
  sha256 "f7a4bffe4a9799cbe471c39d109b3a059094fd36aca0d113d42864a4e2ad24e8"

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast "https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast"
  name "Algoriddim djay Pro"
  homepage "https://www.algoriddim.com/djay-pro-mac"

  app "djay Pro #{version.major}.app"
end
