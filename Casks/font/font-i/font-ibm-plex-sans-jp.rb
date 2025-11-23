cask "font-ibm-plex-sans-jp" do
  version "3.0.0"
  sha256 "4c14c41552934b0bc92fc216a76b36bdc78f745dfbeed1115f9b8bc405ee314f"

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
