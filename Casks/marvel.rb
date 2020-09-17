cask "marvel" do
  version "10.0"
  sha256 "12cfaba23bee43a359182316c811dbae6c11728df5d270836321b902cfbd5232"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
