cask "doomrl" do
  version "0.9.9.7"
  sha256 "fe77aca0af5dd774d1a21dc4f2d0618636c1fe47aa4593bcfe29f0445209b4e2"

  url "https://doom.chaosforge.org/file_download/31/doomrl-#{version.no_dots}.dmg"
  name "Doom the Roguelike"
  desc "Roguelike game inspired by Doom"
  homepage "https://doom.chaosforge.org/"

  livecheck do
    url "https://drl.chaosforge.org/downloads"
    strategy :page_match
    regex(/DRL\s*(\d+(?:\.\d+)*)/i)
  end

  app "DoomRL.app"
end
