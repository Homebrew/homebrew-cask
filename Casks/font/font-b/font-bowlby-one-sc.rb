cask "font-bowlby-one-sc" do
  version "1.2"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bowlbyonesc/BowlbyOneSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bowlby One SC"
  homepage "https://fonts.google.com/specimen/Bowlby+One+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bowlby One SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BowlbyOneSC-Regular.ttf"

  # No zap stanza required
end
