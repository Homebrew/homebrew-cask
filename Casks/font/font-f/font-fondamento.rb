cask "font-fondamento" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fondamento"
  name "Fondamento"
  homepage "https://fonts.google.com/specimen/Fondamento"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fondamento",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fondamento-Italic.ttf"
  font "Fondamento-Regular.ttf"

  # No zap stanza required
end
