cask "eaglefiler" do
  version "1.9.1"
  sha256 "cce9baddc816716db61e83751dd7f9a5a6f21536aa9e33dc253cdc21fa0bf71a"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast "https://c-command.com/eaglefiler/help/version-history"
  name "EagleFiler"
  homepage "https://c-command.com/eaglefiler/"

  app "EagleFiler.app"
end
