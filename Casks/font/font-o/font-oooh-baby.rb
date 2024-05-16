cask "font-oooh-baby" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ooohbaby/OoohBaby-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Oooh Baby"
  homepage "https://fonts.google.com/specimen/Oooh+Baby"

  font "OoohBaby-Regular.ttf"

  # No zap stanza required
end
