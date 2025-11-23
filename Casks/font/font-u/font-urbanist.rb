cask "font-urbanist" do
  version "1.330"
  sha256 "4b808f025f020d8801bb55a7c3ea855e934527be70bf451ab4205e62bfb8fb60"

  url "https://github.com/coreyhu/Urbanist/releases/download/#{version}/Urbanist-fonts.zip"
  name "Urbanist"
  homepage "https://github.com/coreyhu/Urbanist"

  font "Urbanist-fonts/fonts/otf/Urbanist-Black.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-BlackItalic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-Bold.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-BoldItalic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-ExtraBold.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-ExtraBoldItalic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-ExtraLight.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-ExtraLightItalic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-Italic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-Light.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-LightItalic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-Medium.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-MediumItalic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-Regular.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-SemiBold.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-SemiBoldItalic.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-Thin.otf"
  font "Urbanist-fonts/fonts/otf/Urbanist-ThinItalic.otf"
  font "Urbanist-fonts/fonts/variable/Urbanist[ital,wght].ttf"

  # No zap stanza required
end
