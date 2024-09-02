cask "font-ibm-plex-sans-thai" do
  version "1.0.0"
  sha256 "1a39b37654916260791073046aa811450fd9bea63c2acb4413546636939c43a1"

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
