cask "font-lateef" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lateef"
  name "Lateef"
  homepage "https://fonts.google.com/specimen/Lateef"

  font "Lateef-Bold.ttf"
  font "Lateef-ExtraBold.ttf"
  font "Lateef-ExtraLight.ttf"
  font "Lateef-Light.ttf"
  font "Lateef-Medium.ttf"
  font "Lateef-Regular.ttf"
  font "Lateef-SemiBold.ttf"

  # No zap stanza required
end
