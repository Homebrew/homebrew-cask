cask "archipelago" do
  version "4.1.0"
  sha256 "c5e38a690b3aafa164b5d7890251f94421ebcee10df84379daa507c096b2c37e"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
