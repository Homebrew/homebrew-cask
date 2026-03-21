cask "font-spline-sans-mono" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/splinesansmono"
  name "Spline Sans Mono"
  homepage "https://fonts.google.com/specimen/Spline+Sans+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Spline Sans Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SplineSansMono-Italic[wght].ttf"
  font "SplineSansMono[wght].ttf"

  # No zap stanza required
end
