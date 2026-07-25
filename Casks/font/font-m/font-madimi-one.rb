cask "font-madimi-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/madimione/MadimiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Madimi One"
  homepage "https://fonts.google.com/specimen/Madimi+One"

  font "MadimiOne-Regular.ttf"

  # No zap stanza required
end
