cask "proxy-audio-device" do
  version "1.0.6"
  sha256 "1cbdcec6141b21fd4ad72d7675820e6c30a72aad8a48db2a7ce1be72165d8cbb"

  url "https://github.com/briankendall/proxy-audio-device/releases/download/v#{version}/ProxyAudioDevice_v#{version}.zip"
  name "Proxy Audio Device"
  desc "Virtual audio driver to sends all audio to another output"
  homepage "https://github.com/briankendall/proxy-audio-device"

  app "Proxy Audio Device Settings.app"
end
