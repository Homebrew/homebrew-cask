cask "font-ibm-plex-mono" do
  version "1.1.0"
  sha256 "4bfc936d0e1fd19db6327a3786eabdbc3dc0d464500576f6458f6706df68d26c"

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
