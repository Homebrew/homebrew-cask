cask "font-savate" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/savate"
  name "Savate"
  homepage "https://fonts.google.com/specimen/Savate"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Savate",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Savate-Italic[wght].ttf"
  font "Savate[wght].ttf"

  # No zap stanza required
end
