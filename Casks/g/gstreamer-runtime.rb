cask "gstreamer-runtime" do
  version "1.24.6"
  sha256 "fc39d2b72d3f9bdf4512d2d7c8457510f99b2b30c02afe44a4cf498d974a6622"

  url "https://gstreamer.freedesktop.org/data/pkg/osx/#{version}/gstreamer-1.0-#{version}-universal.pkg"
  name "GStreamer runtime package"
  desc "Open Source Multimedia Framework"
  homepage "https://gstreamer.freedesktop.org/"

  livecheck do
    url "https://gstreamer.freedesktop.org/download/"
    regex(/gstreamer[._-]1\.0[._-]v?(\d+(?:\.\d+)+)[._-]universal\.pkg/i)
  end

  pkg "gstreamer-1.0-#{version}-universal.pkg"

  uninstall pkgutil: [
    "org.freedesktop.gstreamer.universal.base-crypto",
    "org.freedesktop.gstreamer.universal.base-system-1.0",
    "org.freedesktop.gstreamer.universal.GStreamer",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-capture",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs-gpl",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-codecs-restricted",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-core",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-devtools",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-dvd",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-editing",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-effects",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-encoding",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-libav",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-net",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-net-restricted",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-playback",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-qt5",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-system",
    "org.freedesktop.gstreamer.universal.gstreamer-1.0-visualizers",
  ]

  zap trash: "/Library/Frameworks/GStreamer.framework"

  caveats <<~EOS
    This cask installs the GStreamer.framework runtime tools into /Library/Frameworks/

    To install the GStreamer.framework development tools also, run:
      brew install --cask gstreamer-development
  EOS
end
