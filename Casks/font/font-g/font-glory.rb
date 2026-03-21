cask "font-glory" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/glory"
  name "Glory"
  homepage "https://fonts.google.com/specimen/Glory"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Glory",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Glory-Italic[wght].ttf"
  font "Glory[wght].ttf"

  # No zap stanza required
end
