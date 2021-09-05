cask "gearcoleco" do
  version "1.0.0"
  sha256 "ef9c37fe10038add3323774baa14af28991754a029cb165e8eab9ab16d990be4"

  url "https://github.com/drhelius/Gearcoleco/releases/download/#{version}/Gearcoleco-#{version}-macOS.zip"
  name "Gearcoleco"
  desc "Colecovision emulator and debugger"
  homepage "https://github.com/drhelius/Gearcoleco"

  app "Gearcoleco-#{version}-macOS/Gearcoleco.app"
end
