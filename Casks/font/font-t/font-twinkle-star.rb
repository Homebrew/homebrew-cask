cask "font-twinkle-star" do
  version "2.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/twinklestar/TwinkleStar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Twinkle Star"
  homepage "https://fonts.google.com/specimen/Twinkle+Star"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Twinkle Star",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TwinkleStar-Regular.ttf"

  # No zap stanza required
end
