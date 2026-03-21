cask "font-montserrat" do
  version "9.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/montserrat"
  name "Montserrat"
  homepage "https://fonts.google.com/specimen/Montserrat"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Montserrat",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Montserrat-Italic[wght].ttf"
  font "Montserrat[wght].ttf"

  # No zap stanza required
end
