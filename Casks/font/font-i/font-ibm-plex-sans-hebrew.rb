cask "font-ibm-plex-sans-hebrew" do
  version "1.0.0"
  sha256 "06ad64c91a9e485a80b2c16f38e60659f0e75c0cfe3ceae23dd7830adde667c2"

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
