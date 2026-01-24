cask "font-podkova-v-f-beta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/podkovavfbeta/PodkovaVFBeta.ttf",
      verified: "github.com/google/fonts/"
  name "Podkova V F Beta"
  homepage "https://fonts.google.com/earlyaccess"

  font "PodkovaVFBeta.ttf"

  # No zap stanza required
end
