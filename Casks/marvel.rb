cask "marvel" do
  version "9.9.1"
  sha256 "23ae39d41c4a630508290a078daf7b484501278b159c6597c53fac3b2d05c782"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
