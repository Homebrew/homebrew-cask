cask "font-stix" do
  version "2.13b171"
  sha256 "1e76b9ab0bb08372ff73ad5b58d9116260e9058d1fce4b83fe1e213c3b9c947f"

  url "https://github.com/stipub/stixfonts/archive/refs/tags/v#{version}.tar.gz",
      verified: "github.com/stipub/stixfonts/"
  name "STIX"
  homepage "https://stixfonts.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:b\d+)?)$/i)
    strategy :github_latest
  end

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
