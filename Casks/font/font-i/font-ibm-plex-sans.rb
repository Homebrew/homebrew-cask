cask "font-ibm-plex-sans" do
  version "1.0.0"
  sha256 "4aef1ff11b58892e1fb18383c1ea45544f87c9793b95216a357d4009ed927361"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans%40#{version}/ibm-plex-sans.zip"
  name "IBM Plex Sans"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-Bold.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-BoldItalic.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-ExtraLight.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-ExtraLightItalic.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-Italic.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-Light.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-LightItalic.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-Medium.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-MediumItalic.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-Regular.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-SemiBold.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-SemiBoldItalic.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-Text.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-TextItalic.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-Thin.otf"
  font "ibm-plex-sans/fonts/complete/otf/IBMPlexSans-ThinItalic.otf"

  # No zap stanza required
end
