cask "audiogridder-server" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "26be020b2ba57d7a0102a152099fcc5e993ce4bbcb23f47d80d5d9f24421658b",
         intel: "072e52bd56fedb1c481961beacca99096e3a65ba36339bdd78155fd1f1d133ea"

  url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-#{arch}.pkg"
  name "AudioGridder Server"
  desc "VST2/VST3/AU DSP Server"
  homepage "https://audiogridder.com/"

  livecheck do
    url "https://audiogridder.com/releases/latest.txt"
    regex(/(\d+(?:\.\d+)+)/i)
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
