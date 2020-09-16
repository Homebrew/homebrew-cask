cask "archipelago" do
  version "3.11.0"
  sha256 "728933822be8d40b0d3bdde0b7a09a4cec9b617ab7323b48d7c95ded6e53a567"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast "https://github.com/npezza93/archipelago/releases.atom"
  name "Archipelago"
  desc "Open-source terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
