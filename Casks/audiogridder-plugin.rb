cask "audiogridder-plugin" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.1.1"

  url "https://audiogridder.com/releases/AudioGridderPlugin_#{version}_macOS-#{arch}.pkg"
  if Hardware::CPU.intel?
    sha256 "4ac6631df3ef05301305a0e299337987c2a2d2f8558edccd41936552c95a8ea9"
  else
    sha256 "63bbb5ddc1eaca8295147648f72b2841e38ef5a3bf0a9146e644214ef8147eb8"
  end

  name "AudioGridder Plugin"
  desc "VST2/VST3/AU/AAX DSP Server Plugin"
  homepage "https://audiogridder.com/"

  livecheck do
    url "https://audiogridder.com/releases/latest.txt"
    strategy :page_match
    regex(/.*/)
  end

  pkg "AudioGridderPlugin_#{version}_macOS-#{arch}.pkg"

  uninstall pkgutil: [
    "com.e47.pkg.au",
    "com.e47.pkg.vst",
    "com.e47.pkg.vst3",
    "com.e47.pkg.aax",
  ]

  zap trash: [
    "~/.audiogridder/audiogridderplugin.cfg",
    "~/.audiogridder/audiogridder.winpos",
    "~/Library/Logs/AudioGridder/Fx",
    "~/Library/Logs/AudioGridder/Instrument",
    "~/Library/Logs/AudioGridder/Midi",
  ],
      rmdir: [
        "~/.audiogridder",
        "~/Library/Logs/AudioGridder",
      ]
end
