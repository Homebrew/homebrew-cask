cask "font-gothic-a1" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gothica1"
  name "Gothic A1"
  homepage "https://fonts.google.com/specimen/Gothic+A1"

  font "GothicA1-Black.ttf"
  font "GothicA1-Bold.ttf"
  font "GothicA1-ExtraBold.ttf"
  font "GothicA1-ExtraLight.ttf"
  font "GothicA1-Light.ttf"
  font "GothicA1-Medium.ttf"
  font "GothicA1-Regular.ttf"
  font "GothicA1-SemiBold.ttf"
  font "GothicA1-Thin.ttf"

  # No zap stanza required
end
