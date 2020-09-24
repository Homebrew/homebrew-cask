cask "marvel" do
  version "10.2"
  sha256 "05544d7c2428ed54f4c2432a58df8ec59de21672f1b7c3a0b34df94cd5283a6b"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
