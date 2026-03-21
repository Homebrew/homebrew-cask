cask "font-bowlby-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bowlbyone/BowlbyOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bowlby One"
  homepage "https://fonts.google.com/specimen/Bowlby+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bowlby One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BowlbyOne-Regular.ttf"

  # No zap stanza required
end
