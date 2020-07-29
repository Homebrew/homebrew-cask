cask "djay-pro" do
  version "2.2.3,202007271709"
  sha256 "49c92be91cc600d9ed78a2abdef5d71025cf5aa7a4c27d988d2bd1cc5a2d8009"

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast "https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast"
  name "Algoriddim djay Pro"
  homepage "https://www.algoriddim.com/djay-pro-mac"

  app "djay Pro #{version.major}.app"
end
