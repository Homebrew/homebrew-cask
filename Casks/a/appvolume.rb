cask "appvolume" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.38"
  sha256 arm:   "9a1aa7d91e55e0a47d6a875f9027924b293abec3e5a1a1a7e5a8b7941546184a",
         intel: "f8b973ad562abd57ecba0c81bc6fecc8a998b743c09fea4e9ac8a8d368b4db80"

  url "https://releases.appvolume.app/AppVolume-#{version}-#{arch}.pkg"
  name "AppVolume"
  desc "Per-application volume control"
  homepage "https://appvolume.app/"

  livecheck do
    url "https://releases.appvolume.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "AppVolume-#{version}-#{arch}.pkg"

  uninstall_postflight_steps do
    terminate_process "coreaudiod", sudo: true, must_succeed: true
  end

  uninstall launchctl: "io.appvolume.daemon",
            quit:      "io.appvolume",
            pkgutil:   [
              "io.appvolume.app",
              "io.appvolume.daemon",
              "io.appvolume.driver",
              "io.appvolume.ui",
            ],
            delete:    [
              "/Library/Audio/Plug-Ins/HAL/AppVolumeAudioDevice.driver",
              "~/Library/LaunchAgents/io.appvolume.daemon.plist",
            ]

  zap trash: [
    "~/Library/Application Support/AppVolume",
    "~/Library/Caches/io.appvolume",
    "~/Library/Preferences/io.appvolume.plist",
  ]
end
