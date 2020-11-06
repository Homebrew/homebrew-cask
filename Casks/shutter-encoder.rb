cask "shutter-encoder" do
  version "14.3"
  sha256 "a24371fb5e9677422d59bb14b859052a400498e78608f022ada221c93b4ca149"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast "https://www.shutterencoder.com/changelog.txt"
  name "Shutter Encoder"
  homepage "https://www.shutterencoder.com/"

  app "Shutter Encoder.app"
end
