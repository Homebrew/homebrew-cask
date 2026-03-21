cask "font-rubik" do
  version "2.300"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rubik"
  name "Rubik"
  homepage "https://fonts.google.com/specimen/Rubik"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rubik-Italic[wght].ttf"
  font "Rubik[wght].ttf"

  # No zap stanza required
end
