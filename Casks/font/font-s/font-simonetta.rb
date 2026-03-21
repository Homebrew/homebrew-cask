cask "font-simonetta" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/simonetta"
  name "Simonetta"
  homepage "https://fonts.google.com/specimen/Simonetta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Simonetta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Simonetta-Black.ttf"
  font "Simonetta-BlackItalic.ttf"
  font "Simonetta-Italic.ttf"
  font "Simonetta-Regular.ttf"

  # No zap stanza required
end
