cask "font-mukta-mahee" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/muktamahee"
  name "Mukta Mahee"
  homepage "https://fonts.google.com/specimen/Mukta+Mahee"

  font "MuktaMahee-Bold.ttf"
  font "MuktaMahee-ExtraBold.ttf"
  font "MuktaMahee-ExtraLight.ttf"
  font "MuktaMahee-Light.ttf"
  font "MuktaMahee-Medium.ttf"
  font "MuktaMahee-Regular.ttf"
  font "MuktaMahee-SemiBold.ttf"

  # No zap stanza required
end
