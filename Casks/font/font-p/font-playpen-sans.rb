cask "font-playpen-sans" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensans/PlaypenSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans"
  homepage "https://fonts.google.com/specimen/Playpen+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playpen Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaypenSans[wght].ttf"

  # No zap stanza required
end
