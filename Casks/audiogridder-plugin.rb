cask "audiogridder-plugin" do
  version "1.1.0"

  if Hardware::CPU.intel?
    sha256 "1912677e6f99c6584a9625f762f09ab9d63240db1f71d3710bdf29b0b3022588"

    url "https://audiogridder.com/releases/AudioGridderPlugin_#{version}_macOS-x86_64.pkg"
  else
    sha256 "7a5e43c39c482ee826e95be6a07ac08b4c846dde224320efe954465674c089fb"

    url "https://audiogridder.com/releases/AudioGridderPlugin_#{version}_macOS-arm64.pkg"
  end

  name "AudioGridder Plugin"
  desc "VST2/VST3/AU DSP Server Plugin"
  homepage "https://audiogridder.com/"

  if Hardware::CPU.intel?
    pkg "AudioGridderPlugin_#{version}_macOS-x86_64.pkg"
  else
    pkg "AudioGridderPlugin_#{version}_macOS-arm64.pkg"
  end

  uninstall pkgutil: [
    "com.e47.pkg.au",
    "com.e47.pkg.vst",
    "com.e47.pkg.vst3",
  ]
end
