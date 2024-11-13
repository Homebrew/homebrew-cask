cask "font-ibm-plex-sans-arabic" do
  version "1.1.0"
  sha256 "f03915581aea37d82792c188b08064023a73494d679b8e19f85f5971db714013"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-arabic%40#{version}/ibm-plex-sans-arabic.zip"
  name "IBM Plex Sans Arabic"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-arabic@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-Bold.otf"
  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-ExtraLight.otf"
  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-Light.otf"
  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-Medium.otf"
  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-Regular.otf"
  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-SemiBold.otf"
  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-Text.otf"
  font "ibm-plex-sans-arabic/fonts/complete/otf/IBMPlexSansArabic-Thin.otf"

  # No zap stanza required
end
