cask "font-shadows-into-light-two" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shadowsintolighttwo/ShadowsIntoLightTwo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shadows Into Light Two"
  homepage "https://fonts.google.com/specimen/Shadows+Into+Light+Two"

  font "ShadowsIntoLightTwo-Regular.ttf"

  # No zap stanza required
end
