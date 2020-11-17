cask "mater" do
  version "1.0.7"
  sha256 "4c62287a7eb4c95a709076f049be0c7e65f3f8c9324f5a8321fe67b7361f8c4b"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-darwin-x64.zip"
  appcast "https://github.com/jasonlong/mater/releases.atom"
  name "Mater"
  homepage "https://github.com/jasonlong/mater"

  app "Mater-darwin-x64/Mater.app"
end
