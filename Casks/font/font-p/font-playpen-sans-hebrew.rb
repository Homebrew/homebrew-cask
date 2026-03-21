cask "font-playpen-sans-hebrew" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensanshebrew/PlaypenSansHebrew%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans Hebrew"
  homepage "https://fonts.google.com/specimen/Playpen+Sans+Hebrew"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playpen Sans Hebrew",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaypenSansHebrew[wght].ttf"

  # No zap stanza required
end
