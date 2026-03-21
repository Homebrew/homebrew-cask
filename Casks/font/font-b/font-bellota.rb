cask "font-bellota" do
  version "4.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bellota"
  name "Bellota"
  homepage "https://fonts.google.com/specimen/Bellota"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bellota",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bellota-Bold.ttf"
  font "Bellota-BoldItalic.ttf"
  font "Bellota-Italic.ttf"
  font "Bellota-Light.ttf"
  font "Bellota-LightItalic.ttf"
  font "Bellota-Regular.ttf"

  # No zap stanza required
end
