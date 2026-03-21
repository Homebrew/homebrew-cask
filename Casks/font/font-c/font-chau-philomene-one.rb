cask "font-chau-philomene-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chauphilomeneone"
  name "Chau Philomene One"
  homepage "https://fonts.google.com/specimen/Chau+Philomene+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chau Philomene One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ChauPhilomeneOne-Italic.ttf"
  font "ChauPhilomeneOne-Regular.ttf"

  # No zap stanza required
end
