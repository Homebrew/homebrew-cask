cask "archipelago" do
  version "4.2.1"
  sha256 "2d07dd0301eb4e4fb113bf8c42a079fb902208d862c6d4ad06a12af543ef56c7"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
