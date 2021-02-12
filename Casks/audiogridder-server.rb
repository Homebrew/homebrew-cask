cask "audiogridder-server" do
  version "1.1.0"

  if Hardware::CPU.intel?
    sha256 "fb29a41c3917201d5925d9abca422fe5e55e36ae30dcd524c8a57d9e29f0728f"
    url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-x86_64.pkg"
    pkg "AudioGridderServer_#{version}_macOS-x86_64.pkg"
  else
    sha256 "09f7752677fc027f7f9193ed3eefc00f760c96a73622099bf706f2ab257f9694"
    url "https://audiogridder.com/releases/AudioGridderServer_#{version}_macOS-arm64.pkg"
    pkg "AudioGridderServer_#{version}_macOS-arm64.pkg"
  end

  name "AudioGridder Server"
  desc "VST2/VST3/AU DSP Server"
  homepage "https://audiogridder.com/"

  uninstall pkgutil: "com.e47.pkg.server"
end
