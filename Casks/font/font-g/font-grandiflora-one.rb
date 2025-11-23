cask "font-grandiflora-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grandifloraone/GrandifloraOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grandiflora One"
  homepage "https://fonts.google.com/specimen/Grandiflora+One"

  font "GrandifloraOne-Regular.ttf"

  # No zap stanza required
end
