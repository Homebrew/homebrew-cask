cask "gearboy" do
  version "3.2.0"
  sha256 "f07cdba0448cee3b63e9912dc7e5555681602ba01bb692c0c96ea504e69adce5"

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  appcast "https://github.com/drhelius/Gearboy/releases.atom"
  name "Gearboy"
  homepage "https://github.com/drhelius/Gearboy"

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
