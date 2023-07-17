cask "gstreamer" do
  version "1.22.4"
  sha256 "739da4bcb2994e441a1efb8a647e32ce0fd9322a2b99f15ccf3b0fb139a836e2"

  url "https://gstreamer.freedesktop.org/data/pkg/osx/#{version}/gstreamer-1.0-#{version}-universal.pkg"
  name "GStreamer"
  desc "Open Source Multimedia Framework"
  homepage "https://gstreamer.freedesktop.org/"

  livecheck do
    url "https://gitlab.freedesktop.org/gstreamer/gstreamer/-/tags?format=atom"
    regex(%r{<title>(\d+(?:\.\d+)+)</title>}i)
  end

  pkg "gstreamer-1.0-#{version}-universal.pkg"

  uninstall pkgutil: [
    "org.freedesktop.gstreamer.universal.base-crypto",
    "org.freedesktop.gstreamer.universal.base-system-1.0",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-capture",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs-gpl",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs-restricted",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-core",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-devtools",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-dvd",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-editing",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-effects",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-encoding",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-libav",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-net-restricted",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-net",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-playback",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-qt5",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-system",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-visualizers",
    "org.freedesktop.gstreamer.universal.GStreamer",
  ]

  caveats "This cask installs GStreamer.framework into /Library/Frameworks/"
end
