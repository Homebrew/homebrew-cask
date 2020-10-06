cask "rotki" do
  version "1.8.1"
  sha256 "72fb341e3475816eb97c959c5bc260821c27d72b7012eb3576cc1e039afc19d9"

  # github.com/rotki/rotki/ was verified as official when first introduced to the cask
  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
