cask "archipelago" do
  version "4.3.0"
  sha256 "2ad8d09afc04aec3d6f9011cd029eb6958c058b598085619ec5c2ce8b6db88ab"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
