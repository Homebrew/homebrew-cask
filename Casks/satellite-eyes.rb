cask "satellite-eyes" do
  version "1.4.3"
  sha256 "512ada3ea57aa99853b86e625e5f6675119c85f6308bdbf52adce49513dc1321"

  # satellite-eyes.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version}.zip"
  appcast "https://satellite-eyes.s3.amazonaws.com/appcast.xml"
  name "Satellite Eyes"
  homepage "https://satelliteeyes.tomtaylor.co.uk/"

  app "Satellite Eyes.app"
end
