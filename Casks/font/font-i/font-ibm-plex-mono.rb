cask "font-ibm-plex-mono" do
  version "2.5.0"
  sha256 "6d23f01257663d8cc49a0d64c22ced630b79e0e2a0ac08a0da86e9a38bbc481c"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-mono%40#{version}/ibm-plex-mono.zip"
  name "IBM Plex Mono"
  homepage "https://github.com/IBM/plex"

  # There can be a notable gap between when a version is tagged and a
  # corresponding release is created, so we check releases instead of the Git
  # tags. Upstream maintains multiple fonts in this repository and the "latest"
  # release may be for another font, so we have to check multiple releases to
  # identify the correct version.
  livecheck do
    url :url
    regex(%r{^@ibm/plex-mono@?(\d+(?:\.\d+)+)$}i)
    strategy :github_releases
  end

  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-Bold.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-BoldItalic.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-ExtraLight.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-ExtraLightItalic.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-Italic.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-Light.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-LightItalic.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-Medium.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-MediumItalic.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-Regular.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-SemiBold.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-SemiBoldItalic.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-Text.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-TextItalic.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-Thin.otf"
  font "ibm-plex-mono/fonts/complete/otf/IBMPlexMono-ThinItalic.otf"

  # No zap stanza required
end
