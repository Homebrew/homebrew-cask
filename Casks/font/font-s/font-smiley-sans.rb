cask "font-smiley-sans" do
  version "2.0.1"
  sha256 "299c0be6c960ae37361762eca76f7d0cd516615435bb96c0d4b98a1e70178a07"

  url "https://github.com/atelier-anchor/smiley-sans/releases/download/v#{version}/smiley-sans-v#{version}.zip",
      verified: "github.com/atelier-anchor/smiley-sans/"
  name "Smiley Sans"
  homepage "https://atelier-anchor.com/typefaces/smiley-sans/"

  font "SmileySans-Oblique.ttf"

  # No zap stanza required
end
