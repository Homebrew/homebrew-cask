cask "font-ibm-plex-sans-devanagari" do
  version "1.1.0"
  sha256 "effc4a35b2908c80806c97a4d5033e63f437611d17a3e09b237edd5c33d8ac94"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-devanagari%40#{version}/ibm-plex-sans-devanagari.zip"
  name "IBM Plex Sans Devanagari"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-devanagari@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-Bold.otf"
  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-ExtraLight.otf"
  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-Light.otf"
  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-Medium.otf"
  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-Regular.otf"
  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-SemiBold.otf"
  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-Text.otf"
  font "ibm-plex-sans-devanagari/fonts/complete/otf/IBMPlexSansDevanagari-Thin.otf"

  # No zap stanza required
end
