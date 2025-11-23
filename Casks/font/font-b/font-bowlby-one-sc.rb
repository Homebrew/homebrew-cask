cask "font-bowlby-one-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bowlbyonesc/BowlbyOneSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bowlby One SC"
  homepage "https://fonts.google.com/specimen/Bowlby+One+SC"

  font "BowlbyOneSC-Regular.ttf"

  # No zap stanza required
end
