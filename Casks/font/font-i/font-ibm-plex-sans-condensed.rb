cask "font-ibm-plex-sans-condensed" do
  version "2.0.0"
  sha256 "f86ba73abbeed7cf7690ead863192a87211dfc2b0cef0ac6bf4700533ec5ab9e"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-condensed%40#{version}/ibm-plex-sans-condensed.zip"
  name "IBM Plex Sans Condensed"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-condensed@?(\d+(?:\.\d+)+)$}i)
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

  # No zap stanza required
end
