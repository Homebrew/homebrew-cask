cask "shutter-encoder" do
  version "14.4"
  sha256 "1e7107d399b9c40c30a8a16d8f283e4499a80c7f5ae35c4f5e4cae293e077be5"

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast "https://www.shutterencoder.com/changelog.txt"
  name "Shutter Encoder"
  homepage "https://www.shutterencoder.com/"

  app "Shutter Encoder.app"
end
