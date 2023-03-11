cask "audiogridder-server" do
  version "1.2.0_1"
  sha256 "ba69f70ee4fd7eb2e962cc203310f1a38f26f0f8432dc232f78af1734c0e699a"

  url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-universal.pkg"
  name "AudioGridder Server"
  desc "VST2/VST3/AU DSP Server"
  homepage "https://audiogridder.com/"

  livecheck do
    cask "audiogridder-plugin"
  end

  pkg "AudioGridderServer_#{version}_macOS-universal.pkg"

  uninstall pkgutil: [
    "com.e47.audiogridder.server",
    "com.e47.pkg.server",
  ]

  zap trash: [
        "~/.audiogridder/audiogridder.winpos",
        "~/.audiogridder/audiogridderserver*.cache",
        "~/.audiogridder/audiogridderserver*.cfg",
        "~/.audiogridder/audiogridderserver*.crash",
        "~/.audiogridder/audiogridderserver*.layouts",
        "~/.audiogridder/audiogridderserver*.winpos",
        "~/.audiogridder/audiogridderserver.cache",
        "~/.audiogridder/audiogridderserver.cfg",
        "~/.audiogridder/audiogridderserver.crash",
        "~/.audiogridder/audiogridderserver.layouts",
        "~/.audiogridder/audiogridderserver.winpos",
        "~/Library/Logs/AudioGridder/Master",
        "~/Library/Logs/AudioGridder/Sandbox-Chain",
        "~/Library/Logs/AudioGridder/Sandbox-Plugin",
        "~/Library/Logs/AudioGridder/Scan",
        "~/Library/Logs/AudioGridder/Server",
      ],
      rmdir: [
        "~/.audiogridder",
        "~/Library/Logs/AudioGridder",
      ]
end
