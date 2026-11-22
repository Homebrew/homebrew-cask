cask "font-ibm-plex-sans" do
  version "1.3.6"
  sha256 "a52bd405930040a6bfdb5c8aff67f1b7205538999986e2186d8f8895ca6a5de1"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans%40#{version}/ibm-plex-sans.zip"
  name "IBM Plex Sans"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans@?(\d+(?:\.\d+)+)$}i)
    strategy :github_releases
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

  zap :not_required
end
