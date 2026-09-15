cask "font-ibm-plex-sans-thai-looped" do
  version "1.1.0"
  sha256 "26c453e3a4341026e2f5525cd498c5aa214e57bdb9db99bc3816826a36be157f"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-sans-thai-looped%40#{version}/ibm-plex-sans-thai-looped.zip"
  name "IBM Plex Sans Thai Looped"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-sans-thai-looped@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-Bold.otf"
  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-ExtraLight.otf"
  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-Light.otf"
  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-Medium.otf"
  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-Regular.otf"
  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-SemiBold.otf"
  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-Text.otf"
  font "ibm-plex-sans-thai-looped/fonts/complete/otf/IBMPlexSansThaiLooped-Thin.otf"

  # No zap stanza required
end
