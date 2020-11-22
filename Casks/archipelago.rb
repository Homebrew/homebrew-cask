cask "archipelago" do
  version "3.12.2"
  sha256 "276bb59a41be257e56cfda5ec1912d297ae74c59bc9b2befc536d54afc970a07"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast "https://github.com/npezza93/archipelago/releases.atom"
  name "Archipelago"
  desc "Open-source terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
