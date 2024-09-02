cask "font-ibm-plex-sans-condensed" do
  version "1.0.0"
  sha256 "4c3298d50688e08ebbc9f238a1f1dfe907f9bcdabaf0c2c3aab0fbeaa3e1d38d"

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
