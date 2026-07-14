cask "font-fira-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/firasans"
  name "Fira Sans"
  homepage "https://fonts.google.com/specimen/Fira+Sans"

  font "FiraSans-Black.ttf"
  font "FiraSans-BlackItalic.ttf"
  font "FiraSans-Bold.ttf"
  font "FiraSans-BoldItalic.ttf"
  font "FiraSans-ExtraBold.ttf"
  font "FiraSans-ExtraBoldItalic.ttf"
  font "FiraSans-ExtraLight.ttf"
  font "FiraSans-ExtraLightItalic.ttf"
  font "FiraSans-Italic.ttf"
  font "FiraSans-Light.ttf"
  font "FiraSans-LightItalic.ttf"
  font "FiraSans-Medium.ttf"
  font "FiraSans-MediumItalic.ttf"
  font "FiraSans-Regular.ttf"
  font "FiraSans-SemiBold.ttf"
  font "FiraSans-SemiBoldItalic.ttf"
  font "FiraSans-Thin.ttf"
  font "FiraSans-ThinItalic.ttf"

  # No zap stanza required
end
