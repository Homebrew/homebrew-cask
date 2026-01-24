cask "font-rokkitt-v-f-beta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rokkittvfbeta/RokkittVFBeta.ttf",
      verified: "github.com/google/fonts/"
  name "Rokkitt V F Beta"
  homepage "https://fonts.google.com/specimen/Rokkitt+V+F+Beta"

  font "RokkittVFBeta.ttf"

  # No zap stanza required
end
