cask "font-ibm-plex-sans-hebrew" do
  version "1.1.0"
  sha256 "d7d490b8a767b972a7f361055fdcf60ad7cb7c270b38ff1bf859562a021369fd"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-hebrew%40#{version}/ibm-plex-sans-hebrew.zip"
  name "IBM Plex Sans Hebrew"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-hebrew@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-Bold.otf"
  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-ExtraLight.otf"
  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-Light.otf"
  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-Medium.otf"
  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-Regular.otf"
  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-SemiBold.otf"
  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-Text.otf"
  font "ibm-plex-sans-hebrew/fonts/complete/otf/IBMPlexSansHebrew-Thin.otf"

  # No zap stanza required
end
