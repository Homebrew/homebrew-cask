cask "font-playfair-display" do
  version "1.203"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playfairdisplay"
  name "Playfair Display"
  homepage "https://fonts.google.com/specimen/Playfair+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playfair Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlayfairDisplay-Italic[wght].ttf"
  font "PlayfairDisplay[wght].ttf"

  # No zap stanza required
end
