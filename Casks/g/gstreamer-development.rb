cask "gstreamer-development" do
  version "1.22.6"
  sha256 "0aa50e13cc1c71c10a56cf4a93f2a34ef3b0508a48c664c9010064f33fb24b0d"

  url "https://gstreamer.freedesktop.org/data/pkg/osx/#{version}/gstreamer-1.0-devel-#{version}-universal.pkg"
  name "GStreamer development package"
  desc "Open Source Multimedia Framework"
  homepage "https://gstreamer.freedesktop.org/"

  livecheck do
    url "https://gstreamer.freedesktop.org/download/"
    regex(/gstreamer[._-]1\.0[._-]devel[._-]v?(\d+(?:\.\d+)+)[._-]universal\.pkg/i)
  end

  conflicts_with formula: "gstreamer"

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

  caveats <<~EOS
    This cask installs the GStreamer.framework development tools into /Library/Frameworks/

    To install the GStreamer.framework runtime tools also, run:
      brew install --cask gstreamer-runtime
  EOS
end
