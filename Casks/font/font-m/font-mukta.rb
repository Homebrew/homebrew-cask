cask "font-mukta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mukta"
  name "Mukta"
  homepage "https://fonts.google.com/specimen/Mukta"

  font "Mukta-Bold.ttf"
  font "Mukta-ExtraBold.ttf"
  font "Mukta-ExtraLight.ttf"
  font "Mukta-Light.ttf"
  font "Mukta-Medium.ttf"
  font "Mukta-Regular.ttf"
  font "Mukta-SemiBold.ttf"

  # No zap stanza required
end
