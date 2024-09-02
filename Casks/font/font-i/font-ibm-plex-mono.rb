cask "font-ibm-plex-mono" do
  version "1.0.0"
  sha256 "06ef4a7638fe20e96fe8fbea55f6f54a297352298e5cb74479cb1ceb7339fc1a"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-mono%40#{version}/ibm-plex-mono.zip"
  name "IBM Plex Mono"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-mono@?(\d+(?:\.\d+)+)$}i)
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
