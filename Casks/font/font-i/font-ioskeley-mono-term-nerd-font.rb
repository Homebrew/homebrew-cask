cask "font-ioskeley-mono-term-nerd-font" do
  version "2.2.0"
  sha256 "25c601b1a561f73cbb0366931148861451a972463718d25e76bf869fd3d54754"

  url "https://github.com/ahatem/IoskeleyMono/releases/download/v#{version}/IoskeleyMono-Term-NerdFont.zip"
  name "Ioskeley Mono Term Nerd Font"
  homepage "https://github.com/ahatem/IoskeleyMono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Normal/IoskeleyMonoTermNerdFontMono-Bold.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-BoldItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-ExtraBold.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-ExtraBoldItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-ExtraLight.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-ExtraLightItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-Heavy.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-HeavyItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-Italic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-Light.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-LightItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-Medium.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-MediumItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-Regular.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-SemiBold.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-SemiBoldItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-SemiLight.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-SemiLightItalic.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-Thin.ttf"
  font "Normal/IoskeleyMonoTermNerdFontMono-ThinItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensed.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedBold.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedBoldItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedExtraBold.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedExtraBoldItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedExtraLight.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedExtraLightItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedHeavy.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedHeavyItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedLight.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedLightItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedMedium.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedMediumItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedSemiBold.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedSemiBoldItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedSemiLight.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedSemiLightItalic.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedThin.ttf"
  font "SemiCondensed/IoskeleyMonoTermNerdFontMono-SemiCondensedThinItalic.ttf"

  zap :not_required
end
