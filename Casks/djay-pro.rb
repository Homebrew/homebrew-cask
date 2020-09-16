cask "djay-pro" do
  version "2.2.5,202008261547"
  sha256 "1865786cca8e8745388cec05af89606c739c8934f0973efcd09496e1e48d4817"

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast "https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast"
  name "Algoriddim djay Pro"
  desc "DJ software"
  homepage "https://www.algoriddim.com/djay-pro-mac"

  app "djay Pro #{version.major}.app"
end
