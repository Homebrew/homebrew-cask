cask "audiogridder-server" do
  version "1.2.0"
  sha256 "ef0abf7cfd82d619e41b2bde1177352136e00333520a7e2ce07825219b2f6fd0"

  url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-universal.pkg"
  name "AudioGridder Server"
  desc "VST2/VST3/AU DSP Server"
  homepage "https://audiogridder.com/"

  livecheck do
    url "https://audiogridder.com/releases/latest.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  pkg "AudioGridderServer_#{version}_macOS-universal.pkg"

  uninstall pkgutil: [
    "com.e47.pkg.server",
    "com.e47.audiogridder.server",
  ]

  zap trash: [
        "~/.audiogridder/audiogridder.winpos",
        "~/.audiogridder/audiogridderserver.winpos",
        "~/.audiogridder/audiogridderserver.cache",
        "~/.audiogridder/audiogridderserver.crash",
        "~/.audiogridder/audiogridderserver.layouts",
        "~/.audiogridder/audiogridderserver.cfg",
        "~/.audiogridder/audiogridderserver*.winpos",
        "~/.audiogridder/audiogridderserver*.cache",
        "~/.audiogridder/audiogridderserver*.crash",
        "~/.audiogridder/audiogridderserver*.layouts",
        "~/.audiogridder/audiogridderserver*.cfg",
        "~/Library/Logs/AudioGridder/Master",
        "~/Library/Logs/AudioGridder/Scan",
        "~/Library/Logs/AudioGridder/Server",
        "~/Library/Logs/AudioGridder/Sandbox-Chain",
        "~/Library/Logs/AudioGridder/Sandbox-Plugin",
      ],
      rmdir: [
        "~/.audiogridder",
        "~/Library/Logs/AudioGridder",
      ]
end
