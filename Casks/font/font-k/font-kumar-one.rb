cask "font-kumar-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kumarone/KumarOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kumar One"
  homepage "https://fonts.google.com/specimen/Kumar+One"

  font "KumarOne-Regular.ttf"

  # No zap stanza required
end
