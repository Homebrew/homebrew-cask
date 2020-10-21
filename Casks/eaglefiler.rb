cask "eaglefiler" do
  version "1.9"
  sha256 "a6ad65844e732a25d82ffd9e78b6cc39a1a11a7e709c6e5448ad378b09420fb3"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast "https://c-command.com/eaglefiler/help/version-history"
  name "EagleFiler"
  homepage "https://c-command.com/eaglefiler/"

  app "EagleFiler.app"
end
