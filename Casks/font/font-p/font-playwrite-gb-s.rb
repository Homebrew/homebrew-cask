cask "font-playwrite-gb-s" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwritegbs"
  name "Playwrite GB S"
  homepage "https://fonts.google.com/specimen/Playwrite+GB+S"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite GB S",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteGBS-Italic[wght].ttf"
  font "PlaywriteGBS[wght].ttf"

  # No zap stanza required
end
