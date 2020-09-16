cask "airtrash" do
  version "1.0.0"
  sha256 "9ce83fef421654b4ca39550255dd09e0b2281da5fe3dbd9e8e23e58640912606"

  url "https://github.com/maciejczyzewski/airtrash/releases/download/#{version}/airtrash-#{version}.dmg"
  appcast "https://github.com/maciejczyzewski/airtrash/releases.atom"
  name "airtrash"
  homepage "https://github.com/maciejczyzewski/airtrash/"

  app "Airtrash.app"
end
