cask "proxy-audio-device" do
  version "1.0.7"
  sha256 "6bdfca3e8a61f6931770de3f6813fa787891dfa8cad674f1af1f7011909c323c"

  url "https://github.com/briankendall/proxy-audio-device/releases/download/v#{version}/ProxyAudioDevice_v#{version}.zip"
  name "Proxy Audio Device"
  desc "Sound and audio controller"
  homepage "https://github.com/briankendall/proxy-audio-device"

  depends_on :macos

  app "Proxy Audio Device Settings.app"
  artifact "ProxyAudioDevice.driver", target: "/Library/Audio/Plug-Ins/HAL/ProxyAudioDevice.driver"

  postflight_steps do
    set_ownership "/Library/Audio/Plug-Ins/HAL/ProxyAudioDevice.driver",
                  user:  "root",
                  group: "wheel"

    terminate_process "coreaudiod", sudo: true, must_succeed: true
  end

  uninstall_postflight_steps do
    terminate_process "coreaudiod", sudo: true, must_succeed: true
  end

  zap trash: "~/Library/Saved Application State/net.briankendall.Proxy-Audio-Device-Settings.savedState"
end
