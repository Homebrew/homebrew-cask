cask "font-dm-mono" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmmono"
  name "DM Mono"
  homepage "https://fonts.google.com/specimen/DM+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "DM Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DMMono-Italic.ttf"
  font "DMMono-Light.ttf"
  font "DMMono-LightItalic.ttf"
  font "DMMono-Medium.ttf"
  font "DMMono-MediumItalic.ttf"
  font "DMMono-Regular.ttf"

  # No zap stanza required
end
