cask "font-rubik-glitch" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikglitch/RubikGlitch-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Glitch"
  homepage "https://fonts.google.com/specimen/Rubik+Glitch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Glitch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikGlitch-Regular.ttf"

  # No zap stanza required
end
