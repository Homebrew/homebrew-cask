cask "font-stix" do
  version "2.14"
  sha256 "b9ce7effe9cf97185bc3bfd9b3c5e79e0928a500127d1f55d0a704e04d274420"

  url "https://github.com/stipub/stixfonts/releases/download/v#{version}/fonts.zip",
      verified: "github.com/stipub/stixfonts/"
  name "STIX"
  homepage "https://stixfonts.org/"

  font "fonts/STIXTwoMath/OTF/STIXTwoMath.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-Bold.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-BoldItalic.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-Italic.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-Medium.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-MediumItalic.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-Regular.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-SemiBold.otf"
  font "fonts/STIXTwoText/OTF/STIXTwoText-SemiBoldItalic.otf"

  # No zap stanza required
end
