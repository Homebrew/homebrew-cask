cask "font-arvo" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arvo"
  name "Arvo"
  homepage "https://fonts.google.com/specimen/Arvo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arvo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arvo-Bold.ttf"
  font "Arvo-BoldItalic.ttf"
  font "Arvo-Italic.ttf"
  font "Arvo-Regular.ttf"

  # No zap stanza required
end
