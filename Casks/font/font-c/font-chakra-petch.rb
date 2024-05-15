cask "font-chakra-petch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chakrapetch"
  name "Chakra Petch"
  homepage "https://fonts.google.com/specimen/Chakra+Petch"

  font "ChakraPetch-Bold.ttf"
  font "ChakraPetch-BoldItalic.ttf"
  font "ChakraPetch-Italic.ttf"
  font "ChakraPetch-Light.ttf"
  font "ChakraPetch-LightItalic.ttf"
  font "ChakraPetch-Medium.ttf"
  font "ChakraPetch-MediumItalic.ttf"
  font "ChakraPetch-Regular.ttf"
  font "ChakraPetch-SemiBold.ttf"
  font "ChakraPetch-SemiBoldItalic.ttf"

  # No zap stanza required
end
