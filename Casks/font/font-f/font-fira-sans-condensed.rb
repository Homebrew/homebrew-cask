cask "font-fira-sans-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/firasanscondensed"
  name "Fira Sans Condensed"
  homepage "https://fonts.google.com/specimen/Fira+Sans+Condensed"

  font "FiraSansCondensed-Black.ttf"
  font "FiraSansCondensed-BlackItalic.ttf"
  font "FiraSansCondensed-Bold.ttf"
  font "FiraSansCondensed-BoldItalic.ttf"
  font "FiraSansCondensed-ExtraBold.ttf"
  font "FiraSansCondensed-ExtraBoldItalic.ttf"
  font "FiraSansCondensed-ExtraLight.ttf"
  font "FiraSansCondensed-ExtraLightItalic.ttf"
  font "FiraSansCondensed-Italic.ttf"
  font "FiraSansCondensed-Light.ttf"
  font "FiraSansCondensed-LightItalic.ttf"
  font "FiraSansCondensed-Medium.ttf"
  font "FiraSansCondensed-MediumItalic.ttf"
  font "FiraSansCondensed-Regular.ttf"
  font "FiraSansCondensed-SemiBold.ttf"
  font "FiraSansCondensed-SemiBoldItalic.ttf"
  font "FiraSansCondensed-Thin.ttf"
  font "FiraSansCondensed-ThinItalic.ttf"

  # No zap stanza required
end
