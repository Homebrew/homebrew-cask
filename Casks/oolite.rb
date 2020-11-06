cask "oolite" do
  version "1.90"
  sha256 "0f3ee04e6874b560482c091445a73d1411a444538928e232681d15a829fab605"

  # github.com/OoliteProject/oolite/ was verified as official when first introduced to the cask
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip"
  appcast "https://github.com/OoliteProject/oolite/releases.atom"
  name "oolite"
  homepage "http://www.oolite.org/"

  app "Oolite.app"
end
