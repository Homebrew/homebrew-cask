cask "font-cossette-texte" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cossettetexte"
  name "Cossette Texte"
  homepage "https://fonts.google.com/specimen/Cossette+Texte"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cossette Texte",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CossetteTexte-Bold.ttf"
  font "CossetteTexte-Regular.ttf"

  # No zap stanza required
end
