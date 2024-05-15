cask "font-montserrat-alternates" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/montserratalternates"
  name "Montserrat Alternates"
  homepage "https://fonts.google.com/specimen/Montserrat+Alternates"

  font "MontserratAlternates-Black.ttf"
  font "MontserratAlternates-BlackItalic.ttf"
  font "MontserratAlternates-Bold.ttf"
  font "MontserratAlternates-BoldItalic.ttf"
  font "MontserratAlternates-ExtraBold.ttf"
  font "MontserratAlternates-ExtraBoldItalic.ttf"
  font "MontserratAlternates-ExtraLight.ttf"
  font "MontserratAlternates-ExtraLightItalic.ttf"
  font "MontserratAlternates-Italic.ttf"
  font "MontserratAlternates-Light.ttf"
  font "MontserratAlternates-LightItalic.ttf"
  font "MontserratAlternates-Medium.ttf"
  font "MontserratAlternates-MediumItalic.ttf"
  font "MontserratAlternates-Regular.ttf"
  font "MontserratAlternates-SemiBold.ttf"
  font "MontserratAlternates-SemiBoldItalic.ttf"
  font "MontserratAlternates-Thin.ttf"
  font "MontserratAlternates-ThinItalic.ttf"

  # No zap stanza required
end
