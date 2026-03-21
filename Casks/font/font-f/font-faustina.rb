cask "font-faustina" do
  version "1.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/faustina"
  name "Faustina"
  homepage "https://fonts.google.com/specimen/Faustina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Faustina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Faustina-Italic[wght].ttf"
  font "Faustina[wght].ttf"

  # No zap stanza required
end
