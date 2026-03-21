cask "font-baskervville" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/baskervville"
  name "Baskervville"
  homepage "https://fonts.google.com/specimen/Baskervville"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Baskervville",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Baskervville-Italic[wght].ttf"
  font "Baskervville[wght].ttf"

  # No zap stanza required
end
