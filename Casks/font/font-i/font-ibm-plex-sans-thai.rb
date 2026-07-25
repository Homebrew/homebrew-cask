cask "font-ibm-plex-sans-thai" do
  version "1.1.0"
  sha256 "d7203f43c20f9abd40487f845c48db4077d2056ea18632c8959591c6815d7fb9"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-thai%40#{version}/ibm-plex-sans-thai.zip"
  name "IBM Plex Sans Thai"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-thai@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-Bold.otf"
  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-ExtraLight.otf"
  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-Light.otf"
  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-Medium.otf"
  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-Regular.otf"
  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-SemiBold.otf"
  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-Text.otf"
  font "ibm-plex-sans-thai/fonts/complete/otf/IBMPlexSansThai-Thin.otf"

  # No zap stanza required
end
