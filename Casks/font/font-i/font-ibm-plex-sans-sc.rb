cask "font-ibm-plex-sans-sc" do
  version "1.1.0"
  sha256 "0aabd737c8ef0206892b912c759101c10b86c6244be99f2e6b57c6905c716837"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-sc%40#{version}/ibm-plex-sans-sc.zip"
  name "IBM Plex Sans SC"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-sc@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-Bold.otf"
  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-ExtraLight.otf"
  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-Light.otf"
  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-Medium.otf"
  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-Regular.otf"
  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-SemiBold.otf"
  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-Text.otf"
  font "ibm-plex-sans-sc/fonts/complete/otf/hinted/IBMPlexSansSC-Thin.otf"

  # No zap stanza required
end
