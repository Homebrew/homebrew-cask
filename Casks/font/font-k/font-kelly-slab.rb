cask "font-kelly-slab" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kellyslab/KellySlab-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kelly Slab"
  homepage "https://fonts.google.com/specimen/Kelly+Slab"

  font "KellySlab-Regular.ttf"

  # No zap stanza required
end
