cask "gstreamer-development" do
  version "1.24.6"
  sha256 "1250a571f7132a122674897d0fc4cedcbae4a4908a51824d756b6806202446b2"

  url "https://gstreamer.freedesktop.org/data/pkg/osx/#{version}/gstreamer-1.0-devel-#{version}-universal.pkg"
  name "GStreamer development package"
  desc "Open Source Multimedia Framework"
  homepage "https://gstreamer.freedesktop.org/"

  livecheck do
    url "https://gstreamer.freedesktop.org/download/"
    regex(/gstreamer[._-]1\.0[._-]devel[._-]v?(\d+(?:\.\d+)+)[._-]universal\.pkg/i)
  end

  depends_on cask: "gstreamer-runtime"

  pkg "gstreamer-1.0-devel-#{version}-universal.pkg"

  uninstall pkgutil: [
    "org.freedesktop.gstreamer.universal.base-crypto-devel",
    "org.freedesktop.gstreamer.universal.base-system-1.0-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-capture-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs-restricted-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-core-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-devtools-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-dvd-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-editing-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-effects-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-encoding-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-libav-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-net-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-net-restricted-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-playback-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-system-devel",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-visualizers-devel",
  ]

  zap trash: "/Library/Frameworks/GStreamer.framework"
end
