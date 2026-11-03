cask "audioroute" do
  version "1.2.10"
  sha256 "96bcb908e04db6463a0996e5235ceebf286e5c84c49aa6586cdc4e6bbc77992e"

  url "https://pub-ee5d9eb8d65945d1ba1716bc9ca61b0e.r2.dev/AudioRoute-#{version}-signed.pkg"
  name "AudioRoute"
  desc "System and per-app audio capture tool"
  homepage "https://audio-route.com/"

  livecheck do
    url "https://audio-route.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "AudioRoute-#{version}-signed.pkg"

  uninstall_postflight_steps do
    terminate_process "coreaudiod", sudo: true, must_succeed: false
  end

  uninstall launchctl: [
              "com.audioroute.app",
              "com.audioroute.daemon",
            ],
            quit:      "com.audioroute.app",
            pkgutil:   "com.audioroute.*",
            delete:    [
              "/Library/Application Support/AudioRoute",
              "/Library/Audio/Plug-Ins/HAL/AudioRouteDriver.driver",
              "/usr/local/bin/audioroute-uninstall.sh",
              "/usr/local/bin/AudioRouteDaemon",
              "~/Library/LaunchAgents/com.audioroute.app.plist",
              "~/Library/LaunchAgents/com.audioroute.daemon.plist",
            ]

  zap script: {
        executable:   "/usr/local/bin/audioroute-uninstall.sh",
        sudo:         true,
        must_succeed: false,
      },
      delete: "/Library/AudioRoute",
      trash:  [
        "~/Library/Application Support/AudioRoute",
        "~/Library/Caches/com.audioroute.app",
        "~/Library/HTTPStorages/com.audioroute.app",
        "~/Library/Preferences/com.audioroute.app.plist",
        "~/Library/Saved Application State/com.audioroute.app.savedState",
      ]
end
