cask "font-urw-base35" do
  # NOTE: "35" is not a version number, but an intrinsic part of the product name
  version "20200910"
  sha256 "e0d9b7f11885fdfdc4987f06b2aa0565ad2a4af52b22e5ebf79e1a98abd0ae2f"

  url "https://github.com/ArtifexSoftware/urw-base35-fonts/archive/refs/tags/#{version}.tar.gz"
  name "URW++ base 35"
  homepage "https://github.com/ArtifexSoftware/urw-base35-fonts"

  no_autobump! because: :requires_manual_review

  font "urw-base35-fonts-#{version}/fonts/C059-BdIta.otf"
  font "urw-base35-fonts-#{version}/fonts/C059-Bold.otf"
  font "urw-base35-fonts-#{version}/fonts/C059-Italic.otf"
  font "urw-base35-fonts-#{version}/fonts/C059-Roman.otf"
  font "urw-base35-fonts-#{version}/fonts/D050000L.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusMonoPS-Bold.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusMonoPS-BoldItalic.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusMonoPS-Italic.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusMonoPS-Regular.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusRoman-Bold.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusRoman-BoldItalic.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusRoman-Italic.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusRoman-Regular.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSans-Bold.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSans-BoldItalic.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSans-Italic.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSans-Regular.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSansNarrow-Bold.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSansNarrow-BoldOblique.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSansNarrow-Oblique.otf"
  font "urw-base35-fonts-#{version}/fonts/NimbusSansNarrow-Regular.otf"
  font "urw-base35-fonts-#{version}/fonts/P052-Bold.otf"
  font "urw-base35-fonts-#{version}/fonts/P052-BoldItalic.otf"
  font "urw-base35-fonts-#{version}/fonts/P052-Italic.otf"
  font "urw-base35-fonts-#{version}/fonts/P052-Roman.otf"
  font "urw-base35-fonts-#{version}/fonts/StandardSymbolsPS.otf"
  font "urw-base35-fonts-#{version}/fonts/URWBookman-Demi.otf"
  font "urw-base35-fonts-#{version}/fonts/URWBookman-DemiItalic.otf"
  font "urw-base35-fonts-#{version}/fonts/URWBookman-Light.otf"
  font "urw-base35-fonts-#{version}/fonts/URWBookman-LightItalic.otf"
  font "urw-base35-fonts-#{version}/fonts/URWGothic-Book.otf"
  font "urw-base35-fonts-#{version}/fonts/URWGothic-BookOblique.otf"
  font "urw-base35-fonts-#{version}/fonts/URWGothic-Demi.otf"
  font "urw-base35-fonts-#{version}/fonts/URWGothic-DemiOblique.otf"
  font "urw-base35-fonts-#{version}/fonts/Z003-MediumItalic.otf"

  # No zap stanza required
end
