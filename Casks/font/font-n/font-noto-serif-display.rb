cask "font-noto-serif-display" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notoserifdisplay"
  name "Noto Serif Display"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifDisplay-Italic[wdth,wght].ttf"
  font "NotoSerifDisplay[wdth,wght].ttf"

  # No zap stanza required
end
