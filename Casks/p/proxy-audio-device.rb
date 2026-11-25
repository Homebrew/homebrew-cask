cask "proxy-audio-device" do
  version "1.1.0.1"
  sha256 "60dd384136444cf7e529685bf52b267ca96324778417b03529f8c6862daa753d"

  url "https://github.com/briankendall/proxy-audio-device/releases/download/v#{version}/ProxyAudioDevice_v#{version}.zip"
  name "Proxy Audio Device"
  desc "Sound and audio controller"
  homepage "https://github.com/briankendall/proxy-audio-device"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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

  zap trash: [
    "~/Library/Preferences/net.briankendall.Proxy-Audio-Device-Settings.plist",
    "~/Library/Saved Application State/net.briankendall.Proxy-Audio-Device-Settings.savedState",
  ]
end
