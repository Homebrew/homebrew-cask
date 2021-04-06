cask "gearboy" do
  version "3.3.0"
  sha256 "0a542e66ad99036cfd3e0bf083367631e023cf05644cac239f8756bf529be5d3"

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  name "Gearboy"
  homepage "https://github.com/drhelius/Gearboy"

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
