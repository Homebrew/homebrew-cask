cask "gearboy" do
  version "3.1.1"
  sha256 "ebe4813b32c99dff7c8e72340450b042cfb3c782416575ad7ad6dbe4b32c21c1"

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  appcast "https://github.com/drhelius/Gearboy/releases.atom"
  name "Gearboy"
  homepage "https://github.com/drhelius/Gearboy"

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
