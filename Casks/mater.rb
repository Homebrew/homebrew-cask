cask "mater" do
  version "1.0.6"
  sha256 "37920a287f04a4e47b4ff3f0301f8d5825fed029dfaf2d04ffb65205de16c2dd"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-darwin-x64.zip"
  appcast "https://github.com/jasonlong/mater/releases.atom"
  name "Mater"
  homepage "https://github.com/jasonlong/mater"

  app "Mater-darwin-x64/Mater.app"
end
