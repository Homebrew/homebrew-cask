cask "font-afacad" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/afacad"
  name "Afacad"
  homepage "https://fonts.google.com/specimen/Afacad"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Afacad",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Afacad-Italic[wght].ttf"
  font "Afacad[wght].ttf"

  # No zap stanza required
end
