cask "mater" do
  version "1.0.8"
  sha256 "21b7612fd3be0c14719b217e7c3a28d7c9a4dc6eddba96d25af6d51c58de564a"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-darwin-x64.zip"
  appcast "https://github.com/jasonlong/mater/releases.atom"
  name "Mater"
  homepage "https://github.com/jasonlong/mater"

  app "Mater-darwin-x64/Mater.app"
end
