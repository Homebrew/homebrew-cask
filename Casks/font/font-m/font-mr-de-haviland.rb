cask "font-mr-de-haviland" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrdehaviland/MrDeHaviland-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mr De Haviland"
  homepage "https://fonts.google.com/specimen/Mr+De+Haviland"

  font "MrDeHaviland-Regular.ttf"

  # No zap stanza required
end
