cask "font-museomoderno" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/museomoderno"
  name "MuseoModerno"
  homepage "https://fonts.google.com/specimen/MuseoModerno"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "MuseoModerno",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MuseoModerno-Italic[wght].ttf"
  font "MuseoModerno[wght].ttf"

  # No zap stanza required
end
