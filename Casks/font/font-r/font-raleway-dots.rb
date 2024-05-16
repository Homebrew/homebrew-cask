cask "font-raleway-dots" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ralewaydots/RalewayDots-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Raleway Dots"
  homepage "https://fonts.google.com/specimen/Raleway+Dots"

  font "RalewayDots-Regular.ttf"

  # No zap stanza required
end
