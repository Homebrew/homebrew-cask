cask "font-ibm-plex-sans-condensed" do
  version "2.3.1"
  sha256 "baefcf09fd447d5c8c1b29fa8543a603d5d3c4766a9a495b5eaeaeeff6e5ed86"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-condensed%40#{version}/ibm-plex-sans-condensed.zip"
  name "IBM Plex Sans Condensed"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-condensed@?(\d+(?:\.\d+)+)$}i)
    strategy :github_releases
  end

  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-Bold.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-BoldItalic.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-ExtraLight.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-ExtraLightItalic.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-Italic.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-Light.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-LightItalic.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-Medium.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-MediumItalic.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-Regular.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-SemiBold.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-SemiBoldItalic.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-Text.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-TextItalic.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-Thin.otf"
  font "ibm-plex-sans-condensed/fonts/complete/otf/IBMPlexSansCondensed-ThinItalic.otf"

  zap :not_required
end
