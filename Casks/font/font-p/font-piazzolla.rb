cask "font-piazzolla" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/piazzolla"
  name "Piazzolla"
  homepage "https://fonts.google.com/specimen/Piazzolla"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Piazzolla",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Piazzolla-Italic[opsz,wght].ttf"
  font "Piazzolla[opsz,wght].ttf"

  # No zap stanza required
end
