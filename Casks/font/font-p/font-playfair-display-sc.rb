cask "font-playfair-display-sc" do
  version "1.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playfairdisplaysc"
  name "Playfair Display SC"
  homepage "https://fonts.google.com/specimen/Playfair+Display+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playfair Display SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlayfairDisplaySC-Black.ttf"
  font "PlayfairDisplaySC-BlackItalic.ttf"
  font "PlayfairDisplaySC-Bold.ttf"
  font "PlayfairDisplaySC-BoldItalic.ttf"
  font "PlayfairDisplaySC-Italic.ttf"
  font "PlayfairDisplaySC-Regular.ttf"

  # No zap stanza required
end
