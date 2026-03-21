cask "font-cossette-titre" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cossettetitre"
  name "Cossette Titre"
  homepage "https://fonts.google.com/specimen/Cossette+Titre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cossette Titre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CossetteTitre-Bold.ttf"
  font "CossetteTitre-Regular.ttf"

  # No zap stanza required
end
