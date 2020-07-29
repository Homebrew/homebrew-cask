cask "doomrl" do
  version "0.9.9.7"
  sha256 "fe77aca0af5dd774d1a21dc4f2d0618636c1fe47aa4593bcfe29f0445209b4e2"

  url "https://doom.chaosforge.org/file_download/31/doomrl-#{version.no_dots}.dmg"
  appcast "https://drl.chaosforge.org/downloads"
  name "Doom the Roguelike"
  homepage "https://doom.chaosforge.org/"

  app "DoomRL.app"
end
