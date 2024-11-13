cask "font-ibm-plex-sans-jp" do
  version "1.1.0"
  sha256 "96e7b8af07b5b38fad9c531c11854559c47332b45de7e65c45672b5415f3cd55"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-jp%40#{version}/ibm-plex-sans-jp.zip"
  name "IBM Plex Sans JP"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-jp@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-Bold.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-ExtraLight.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-Light.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-Medium.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-Regular.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-SemiBold.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-Text.otf"
  font "ibm-plex-sans-jp/fonts/complete/otf/hinted/IBMPlexSansJP-Thin.otf"

  # No zap stanza required
end
