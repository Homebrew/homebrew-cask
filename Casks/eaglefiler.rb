cask "eaglefiler" do
  version "1.9.2"
  sha256 "79b864922d251186944a6fa147193b1ab4cbafc740bd204d9e826735380318c6"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast "https://c-command.com/eaglefiler/help/version-history"
  name "EagleFiler"
  homepage "https://c-command.com/eaglefiler/"

  app "EagleFiler.app"
end
