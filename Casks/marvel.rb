cask "marvel" do
  version "10.3"
  sha256 "607e307f767667a45c0ff3e83be4b5f1731bc4280a548cbbc1421213195432b9"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
