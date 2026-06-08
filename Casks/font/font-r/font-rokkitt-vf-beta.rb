cask "font-rokkitt-vf-beta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rokkittvfbeta/RokkittVFBeta.ttf",
      verified: "github.com/google/fonts/"
  name "Rokkitt VF Beta"
  homepage "https://fonts.google.com/specimen/Rokkitt+VF+Beta"

  font "RokkittVFBeta.ttf"

  # No zap stanza required
end
