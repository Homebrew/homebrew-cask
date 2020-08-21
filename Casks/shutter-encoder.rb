cask "shutter-encoder" do
  version "14.1"
  sha256 "4fef2475907f4c8074c835519ed27d00072332b8b829df3e6098c85ae4c279e5"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast "https://www.shutterencoder.com/changelog.txt"
  name "Shutter Encoder"
  homepage "https://www.shutterencoder.com/"

  app "Shutter Encoder.app"
end
