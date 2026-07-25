cask "font-public-sans" do
  version "2.001"
  sha256 "88cacdf7cd03b31af8f1f83e1f51e0eb5a6052565a6c014c90c385f1ff2d13a5"

  url "https://github.com/uswds/public-sans/releases/download/v#{version}/public-sans-v#{version}.zip",
      verified: "github.com/uswds/public-sans/"
  name "Public Sans"
  homepage "https://public-sans.digital.gov/"

  font "fonts/otf/PublicSans-Black.otf"
  font "fonts/otf/PublicSans-BlackItalic.otf"
  font "fonts/otf/PublicSans-Bold.otf"
  font "fonts/otf/PublicSans-BoldItalic.otf"
  font "fonts/otf/PublicSans-ExtraBold.otf"
  font "fonts/otf/PublicSans-ExtraBoldItalic.otf"
  font "fonts/otf/PublicSans-ExtraLight.otf"
  font "fonts/otf/PublicSans-ExtraLightItalic.otf"
  font "fonts/otf/PublicSans-Italic.otf"
  font "fonts/otf/PublicSans-Light.otf"
  font "fonts/otf/PublicSans-LightItalic.otf"
  font "fonts/otf/PublicSans-Medium.otf"
  font "fonts/otf/PublicSans-MediumItalic.otf"
  font "fonts/otf/PublicSans-Regular.otf"
  font "fonts/otf/PublicSans-SemiBold.otf"
  font "fonts/otf/PublicSans-SemiBoldItalic.otf"
  font "fonts/otf/PublicSans-Thin.otf"
  font "fonts/otf/PublicSans-ThinItalic.otf"
  font "fonts/variable/PublicSans-Italic[wght].ttf"
  font "fonts/variable/PublicSans[wght].ttf"

  # No zap stanza required
end
