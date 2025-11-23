cask "font-shadows-into-light" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shadowsintolight/ShadowsIntoLight.ttf",
      verified: "github.com/google/fonts/"
  name "Shadows Into Light"
  homepage "https://fonts.google.com/specimen/Shadows+Into+Light"

  font "ShadowsIntoLight.ttf"

  # No zap stanza required
end
