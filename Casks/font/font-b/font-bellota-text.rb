cask "font-bellota-text" do
  version "4.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bellotatext"
  name "Bellota Text"
  homepage "https://fonts.google.com/specimen/Bellota+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bellota Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BellotaText-Bold.ttf"
  font "BellotaText-BoldItalic.ttf"
  font "BellotaText-Italic.ttf"
  font "BellotaText-Light.ttf"
  font "BellotaText-LightItalic.ttf"
  font "BellotaText-Regular.ttf"

  # No zap stanza required
end
