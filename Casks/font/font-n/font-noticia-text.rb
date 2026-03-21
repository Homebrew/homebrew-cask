cask "font-noticia-text" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/noticiatext"
  name "Noticia Text"
  homepage "https://fonts.google.com/specimen/Noticia+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noticia Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NoticiaText-Bold.ttf"
  font "NoticiaText-BoldItalic.ttf"
  font "NoticiaText-Italic.ttf"
  font "NoticiaText-Regular.ttf"

  # No zap stanza required
end
