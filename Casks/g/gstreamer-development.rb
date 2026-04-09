cask "gstreamer-development" do
  version "1.28.2"
  sha256 "810ad1b7fb25cb90aab00d1c0469a46119f5ede9d7df2b746a102895832b27d6"

  url "https://gstreamer.freedesktop.org/data/pkg/osx/#{version}/gstreamer-1.0-devel-#{version}-universal.pkg"
  name "GStreamer development package"
  desc "Open Source Multimedia Framework"
  homepage "https://gstreamer.freedesktop.org/"

  livecheck do
    url "https://gstreamer.freedesktop.org/download/"
    regex(/gstreamer[._-]1\.0[._-]devel[._-]v?(\d+(?:\.\d+)+)[._-]universal\.pkg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on cask: "gstreamer-runtime"

  pkg "gstreamer-1.0-devel-#{version}-universal.pkg"

  uninstall pkgutil: [
    "org.freedesktop.gstreamer.darwin.base-crypto-devel",
    "org.freedesktop.gstreamer.darwin.base-system-1.0-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-analytics-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-capture-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-codecs-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-codecs-gpl-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-codecs-gpl-restricted-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-codecs-restricted-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-core-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-devtools-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-dvd-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-dvd-gpl-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-editing-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-effects-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-encoding-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-gtk-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-libav-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-net-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-net-restricted-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-playback-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-python-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-system-devel",
    "org.freedesktop.gstreamer.darwin.gstreamer-1.0-visualizers-devel",
  ]

  zap trash: "/Library/Frameworks/GStreamer.framework"
end
