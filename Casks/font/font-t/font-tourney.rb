cask "font-tourney" do
  version "1.015"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tourney"
  name "Tourney"
  homepage "https://fonts.google.com/specimen/Tourney"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tourney",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tourney-Italic[wdth,wght].ttf"
  font "Tourney[wdth,wght].ttf"

  # No zap stanza required
end
