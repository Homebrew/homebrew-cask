cask "font-stix" do
  version "2.13"
  sha256 "c4671ec4a116d887c8ebf91b2706301bebc43e776ac00f549c36ad1f34964c98"

  url "https://github.com/stipub/stixfonts/archive/refs/tags/v#{version}.tar.gz",
      verified: "github.com/stipub/stixfonts/"
  name "STIX"
  homepage "https://stixfonts.org/"

  font "stixfonts-#{version}/fonts/static_otf/STIXTwoMath-Regular.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-Bold.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-BoldItalic.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-Italic.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-Medium.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-MediumItalic.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-Regular.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-SemiBold.otf"
  font "stixfonts-#{version}/fonts/static_otf/STIXTwoText-SemiBoldItalic.otf"

  # No zap stanza required
end
