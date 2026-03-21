cask "font-loved-by-the-king" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lovedbytheking/LovedbytheKing.ttf",
      verified: "github.com/google/fonts/"
  name "Loved by the King"
  homepage "https://fonts.google.com/specimen/Loved+by+the+King"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Loved by the King",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LovedbytheKing.ttf"

  # No zap stanza required
end
