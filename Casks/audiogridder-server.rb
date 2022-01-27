cask "audiogridder-server" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.1.1"

  if Hardware::CPU.intel?
    sha256 "072e52bd56fedb1c481961beacca99096e3a65ba36339bdd78155fd1f1d133ea"
  else
    sha256 "26be020b2ba57d7a0102a152099fcc5e993ce4bbcb23f47d80d5d9f24421658b"
  end

  url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-#{arch}.pkg"
  name "AudioGridder Server"
  desc "VST2/VST3/AU DSP Server"
  homepage "https://audiogridder.com/"

  livecheck do
    url "https://audiogridder.com/releases/latest.txt"
    regex(/(\d+(?:\.\d+)+)/)
  end

  pkg "AudioGridderServer_#{version}_macOS-#{arch}.pkg"

  uninstall pkgutil: "com.e47.pkg.server"

  zap trash: [
    "~/.audiogridder/audiogridder.winpos",
    "~/.audiogridder/audiogridderserver.cache",
    "~/.audiogridder/audiogridderserver.cfg",
    "~/Library/Logs/AudioGridder/Master",
    "~/Library/Logs/AudioGridder/Scan",
    "~/Library/Logs/AudioGridder/Server",
  ],
      rmdir: [
        "~/.audiogridder",
        "~/Library/Logs/AudioGridder",
      ]
end
