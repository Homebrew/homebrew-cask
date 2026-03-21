cask "font-rokkitt" do
  version "3.103"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rokkitt"
  name "Rokkitt"
  homepage "https://fonts.google.com/specimen/Rokkitt"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rokkitt",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rokkitt-Italic[wght].ttf"
  font "Rokkitt[wght].ttf"

  # No zap stanza required
end
