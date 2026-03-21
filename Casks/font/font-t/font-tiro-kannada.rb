cask "font-tiro-kannada" do
  version "1.52"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirokannada"
  name "Tiro Kannada"
  homepage "https://fonts.google.com/specimen/Tiro+Kannada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiro Kannada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TiroKannada-Italic.ttf"
  font "TiroKannada-Regular.ttf"

  # No zap stanza required
end
