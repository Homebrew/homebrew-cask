cask "font-nacelle" do
  version "1.00"
  sha256 "4e21fc1e22b15c4e1a7c520cf48ec5d47a5803beee21ac7edc0b205c340a4065"

  url "https://dotcolon.net/files/fonts/nacelle_#{version.no_dots}.zip"
  name "Nacelle"
  homepage "https://dotcolon.net/fonts/nacelle/"

  livecheck do
    url :homepage
    regex(/Version\D*(\d+(?:\.\d+)+)/i)
  end

  font "Nacelle-Black.otf"
  font "Nacelle-BlackItalic.otf"
  font "Nacelle-Bold.otf"
  font "Nacelle-BoldItalic.otf"
  font "Nacelle-Heavy.otf"
  font "Nacelle-HeavyItalic.otf"
  font "Nacelle-Italic.otf"
  font "Nacelle-Light.otf"
  font "Nacelle-LightItalic.otf"
  font "Nacelle-Regular.otf"
  font "Nacelle-SemiBold.otf"
  font "Nacelle-SemiBoldItalic.otf"
  font "Nacelle-Thin.otf"
  font "Nacelle-ThinItalic.otf"
  font "Nacelle-UltraLight.otf"
  font "Nacelle-UltraLightItalic.otf"

  # No zap stanza required
end
