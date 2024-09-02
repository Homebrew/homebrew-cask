cask "font-ibm-plex-sans-arabic" do
  version "1.0.0"
  sha256 "759e7a77c4dbae38371e5d3b1016e2ee5f75a164e708a960bb69d8949f0c3593"

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
