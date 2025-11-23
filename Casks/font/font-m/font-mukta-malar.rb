cask "font-mukta-malar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/muktamalar"
  name "Mukta Malar"
  homepage "https://fonts.google.com/specimen/Mukta+Malar"

  font "MuktaMalar-Bold.ttf"
  font "MuktaMalar-ExtraBold.ttf"
  font "MuktaMalar-ExtraLight.ttf"
  font "MuktaMalar-Light.ttf"
  font "MuktaMalar-Medium.ttf"
  font "MuktaMalar-Regular.ttf"
  font "MuktaMalar-SemiBold.ttf"

  # No zap stanza required
end
