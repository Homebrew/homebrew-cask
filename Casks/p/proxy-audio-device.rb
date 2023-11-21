cask "proxy-audio-device" do
  version "1.0.7"
  sha256 "6bdfca3e8a61f6931770de3f6813fa787891dfa8cad674f1af1f7011909c323c"

  url "https://github.com/briankendall/proxy-audio-device/releases/download/v#{version}/ProxyAudioDevice_v#{version}.zip"
  name "Proxy Audio Device"
  desc "Sound and audio controller"
  homepage "https://github.com/briankendall/proxy-audio-device"

  app "Proxy Audio Device Settings.app"

  # No zap stanza required
end
