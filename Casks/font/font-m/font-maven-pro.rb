cask "font-maven-pro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mavenpro/MavenPro%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Maven Pro"
  homepage "https://fonts.google.com/specimen/Maven+Pro"

  font "MavenPro[wght].ttf"

  # No zap stanza required
end
