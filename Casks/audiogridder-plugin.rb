cask "audiogridder-plugin" do
  version "1.2.0"
  sha256 "1b819a603708e02e0e4624f51821b327ef6e30829266656982c1f051a5714633"

  url "https://audiogridder.com/releases/AudioGridderPlugin_#{version}_macOS-universal.pkg"
  name "AudioGridder Plugin"
  desc "VST2/VST3/AU/AAX DSP Server Plugin"
  homepage "https://audiogridder.com/"

  livecheck do
    url "https://audiogridder.com/releases/latest.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  pkg "AudioGridderPlugin_#{version}_macOS-universal.pkg"

  uninstall pkgutil: [
    "com.e47.audiogridder.aax",
    "com.e47.audiogridder.au",
    "com.e47.audiogridder.plugintray",
    "com.e47.audiogridder.vst",
    "com.e47.audiogridder.vst3",
    "com.e47.pkg.aax",
    "com.e47.pkg.au",
    "com.e47.pkg.vst",
    "com.e47.pkg.vst3",
  ]

  zap trash: [
        "~/.audiogridder/audiogridder.winpos",
        "~/.audiogridder/audiogridderplugin.cfg",
        "~/.audiogridder/audiogridderplugintray.cfg",
        "~/Library/Logs/AudioGridder/Fx",
        "~/Library/Logs/AudioGridder/Instrument",
        "~/Library/Logs/AudioGridder/Midi",
        "~/Library/Logs/AudioGridder/Tray",
      ],
      rmdir: [
        "~/.audiogridder",
        "~/Library/Logs/AudioGridder",
      ]
end
