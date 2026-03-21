cask "font-vollkorn" do
  version "5.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/vollkorn"
  name "Vollkorn"
  homepage "https://fonts.google.com/specimen/Vollkorn"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vollkorn",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Vollkorn-Italic[wght].ttf"
  font "Vollkorn[wght].ttf"

  # No zap stanza required
end
