cask "font-lekton" do
  version "34.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lekton"
  name "Lekton"
  homepage "https://fonts.google.com/specimen/Lekton"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lekton",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lekton-Bold.ttf"
  font "Lekton-Italic.ttf"
  font "Lekton-Regular.ttf"

  # No zap stanza required
end
