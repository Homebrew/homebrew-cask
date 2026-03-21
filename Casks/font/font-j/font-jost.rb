cask "font-jost" do
  version "3.710"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/jost"
  name "Jost"
  homepage "https://fonts.google.com/specimen/Jost"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jost",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jost-Italic[wght].ttf"
  font "Jost[wght].ttf"

  # No zap stanza required
end
