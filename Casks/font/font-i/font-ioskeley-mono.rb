cask "font-ioskeley-mono" do
  version "2.1.0"
  sha256 "d3c4474bfc9ec5b74d9638f3a2b602a886d33b89bcc30ba228b91b0631fc7a36"

  url "https://github.com/ahatem/IoskeleyMono/releases/download/v#{version}/IoskeleyMono.zip"
  name "Ioskeley Mono"
  homepage "https://github.com/ahatem/IoskeleyMono"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
    strategy :github_latest
  end

  font "Normal/Unhinted/IoskeleyMono-Black.ttf"
  font "Normal/Unhinted/IoskeleyMono-BlackItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-Bold.ttf"
  font "Normal/Unhinted/IoskeleyMono-BoldItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-ExtraBold.ttf"
  font "Normal/Unhinted/IoskeleyMono-ExtraBoldItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-ExtraLight.ttf"
  font "Normal/Unhinted/IoskeleyMono-ExtraLightItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-Italic.ttf"
  font "Normal/Unhinted/IoskeleyMono-Light.ttf"
  font "Normal/Unhinted/IoskeleyMono-LightItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-Medium.ttf"
  font "Normal/Unhinted/IoskeleyMono-MediumItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-Regular.ttf"
  font "Normal/Unhinted/IoskeleyMono-SemiBold.ttf"
  font "Normal/Unhinted/IoskeleyMono-SemiBoldItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-SemiLight.ttf"
  font "Normal/Unhinted/IoskeleyMono-SemiLightItalic.ttf"
  font "Normal/Unhinted/IoskeleyMono-Thin.ttf"
  font "Normal/Unhinted/IoskeleyMono-ThinItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensed.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedBlack.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedBlackItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedBold.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedBoldItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedExtraBold.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedExtraBoldItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedExtraLight.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedExtraLightItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedLight.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedLightItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedMedium.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedMediumItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedSemiBold.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedSemiBoldItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedSemiLight.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedSemiLightItalic.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedThin.ttf"
  font "SemiCondensed/Unhinted/IoskeleyMono-SemiCondensedThinItalic.ttf"

  # No zap stanza required
end
