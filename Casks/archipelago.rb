cask "archipelago" do
  version "3.13.0"
  sha256 "31ce353f8325b248bf55f063b19b303e01916b2a24df49ebae61dfef55ac5e22"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast "https://github.com/npezza93/archipelago/releases.atom"
  name "Archipelago"
  desc "Open-source terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
