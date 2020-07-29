cask "fman" do
  version "1.7.3"
  sha256 "27e9aa2ffae66f448a45c025a1fb1b9e06903aab5d2f117b951612deeee09531"

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast "https://fman.io/updates/Appcast.xml"
  name "fman"
  homepage "https://fman.io/"

  app "fman.app"
end
