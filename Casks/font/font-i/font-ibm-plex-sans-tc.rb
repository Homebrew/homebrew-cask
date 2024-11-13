cask "font-ibm-plex-sans-tc" do
  version "1.1.0"
  sha256 "b79600d3c9155fa05c9024eb81cfe2fbdd8cd068503dfafd79405ea577aa9fec"

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
