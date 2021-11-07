cask "gearboy" do
  version "3.4.0"
  sha256 "9b7b276c2f4b01dab8a1562b9dce5c61ab61c770b74a81c4d26e1d1e69be2bfb"

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  name "Gearboy"
  homepage "https://github.com/drhelius/Gearboy"

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
