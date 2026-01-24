cask "font-rounded-mplus1c" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/roundedmplus1c"
  name "Rounded Mplus1c"
  homepage "https://fonts.google.com/specimen/Rounded+Mplus1c"

  font "RoundedMplus1c-Black.ttf"
  font "RoundedMplus1c-Bold.ttf"
  font "RoundedMplus1c-ExtraBold.ttf"
  font "RoundedMplus1c-Light.ttf"
  font "RoundedMplus1c-Medium.ttf"
  font "RoundedMplus1c-Regular.ttf"
  font "RoundedMplus1c-Thin.ttf"

  # No zap stanza required
end
