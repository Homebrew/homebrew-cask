cask "font-ibm-plex-sans-tc" do
  version "1.0.0"
  sha256 "38f4b86e52b5735eb926b6a0a41293ace6708632e41a0280618939d601dd5aaf"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-tc%40#{version}/ibm-plex-sans-tc.zip"
  name "IBM Plex Sans TC"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-tc@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-Bold.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-ExtraLight.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-Light.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-Medium.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-Regular.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-SemiBold.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-Text.otf"
  font "ibm-plex-sans-tc/fonts/complete/otf/hinted/IBMPlexSansTC-Thin.otf"

  # No zap stanza required
end
