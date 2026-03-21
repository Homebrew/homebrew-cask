cask "font-rosarivo" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rosarivo"
  name "Rosarivo"
  homepage "https://fonts.google.com/specimen/Rosarivo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rosarivo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rosarivo-Italic.ttf"
  font "Rosarivo-Regular.ttf"

  # No zap stanza required
end
