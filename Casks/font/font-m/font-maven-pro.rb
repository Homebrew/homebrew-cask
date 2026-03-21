cask "font-maven-pro" do
  version "2.103"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mavenpro/MavenPro%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Maven Pro"
  homepage "https://fonts.google.com/specimen/Maven+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Maven Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MavenPro[wght].ttf"

  # No zap stanza required
end
