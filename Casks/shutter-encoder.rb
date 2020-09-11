cask "shutter-encoder" do
  version "14.2"
  sha256 "1a56278ed98590a0319fba08553da370769c40756745d00bba202521664ef756"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast "https://www.shutterencoder.com/changelog.txt"
  name "Shutter Encoder"
  homepage "https://www.shutterencoder.com/"

  app "Shutter Encoder.app"
end
