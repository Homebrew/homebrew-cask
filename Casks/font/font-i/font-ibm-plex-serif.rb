cask "font-ibm-plex-serif" do
  version "2.0.0"
  sha256 "c006b095c47b919c6c8d78319e9e628745033f5db94507c1c9dfe4b35dd51f1e"

  url "https://github.com/IBM/plex/releases/download/%40ibm%2Fplex-serif%40#{version}/ibm-plex-serif.zip"
  name "IBM Plex Serif"
  homepage "https://github.com/IBM/plex"

  livecheck do
    url :url
    regex(%r{^@ibm/plex-serif@?(\d+(?:\.\d+)+)$}i)
  end

  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-Bold.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-BoldItalic.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-ExtraLight.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-ExtraLightItalic.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-Italic.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-Light.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-LightItalic.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-Medium.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-MediumItalic.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-Regular.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-SemiBold.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-SemiBoldItalic.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-Text.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-TextItalic.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-Thin.otf"
  font "ibm-plex-serif/fonts/complete/otf/IBMPlexSerif-ThinItalic.otf"

  # No zap stanza required
end
