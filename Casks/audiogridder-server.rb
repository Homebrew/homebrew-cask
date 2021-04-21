cask "audiogridder-server" do
  version "1.1.1"

  if Hardware::CPU.intel?
    sha256 "072e52bd56fedb1c481961beacca99096e3a65ba36339bdd78155fd1f1d133ea"
    url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-x86_64.pkg"
    pkg "AudioGridderServer_#{version}_macOS-x86_64.pkg"
  else
    sha256 "26be020b2ba57d7a0102a152099fcc5e993ce4bbcb23f47d80d5d9f24421658b"
    url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-arm64.pkg"
    pkg "AudioGridderServer_#{version}_macOS-arm64.pkg"
  end

  name "AudioGridder Server"
  desc "VST2/VST3/AU DSP Server"
  homepage "https://audiogridder.com/"

  livecheck do
    url "https://audiogridder.com/releases/latest.txt"
    strategy :page_match
    regex(/.*/)
  end

  uninstall pkgutil: "com.e47.pkg.server"

  zap trash: [
    "~/.audiogridder/audiogridderserver.cfg",
    "~/.audiogridder/audiogridderserver.cache",
    "~/.audiogridder/audiogridder.winpos",
    "~/Library/Logs/AudioGridder/Master",
    "~/Library/Logs/AudioGridder/Server",
    "~/Library/Logs/AudioGridder/Scan",
  ],
      rmdir: [
        "~/.audiogridder",
        "~/Library/Logs/AudioGridder",
      ]
end
