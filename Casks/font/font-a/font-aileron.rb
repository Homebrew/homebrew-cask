cask "font-aileron" do
  version "0.102"
  sha256 "a93a1327f44912a7b1410ad0056fec3e904074413b0bd9da550f6175587cf958"

  url "https://dotcolon.net/downloads/fonts/aileron_#{version.no_dots}.zip"
  name "Aileron"
  homepage "https://dotcolon.net/font/aileron/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)*)/)
  end

  font "Aileron-Black.otf"
  font "Aileron-BlackItalic.otf"
  font "Aileron-Bold.otf"
  font "Aileron-BoldItalic.otf"
  font "Aileron-Heavy.otf"
  font "Aileron-HeavyItalic.otf"
  font "Aileron-Italic.otf"
  font "Aileron-Light.otf"
  font "Aileron-LightItalic.otf"
  font "Aileron-Regular.otf"
  font "Aileron-SemiBold.otf"
  font "Aileron-SemiBoldItalic.otf"
  font "Aileron-Thin.otf"
  font "Aileron-ThinItalic.otf"
  font "Aileron-UltraLight.otf"
  font "Aileron-UltraLightItalic.otf"

  # No zap stanza required
end
