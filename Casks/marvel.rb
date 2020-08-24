cask "marvel" do
  version "9.9"
  sha256 "011e6037457f0ef9f30279cd4cf85edde4b047932623680caeb329b76be6cb09"

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast "https://storage.googleapis.com/sketch-plugin/app.xml"
  name "Marvel"
  homepage "https://marvelapp.com/"

  app "Marvel.app"
end
