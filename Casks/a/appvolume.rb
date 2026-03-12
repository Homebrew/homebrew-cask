cask "appvolume" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.35"
  sha256 arm:   "f24ef24218421892f0644b57a9e506208be25362a9a2088ea208c590f546c58a",
         intel: "a4c7e1f030b7156dff158eba4fa97e4f3ecebefd7838da8b02b483860be703ba"

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
  depends_on macos: ">= :sonoma"

  pkg "AppVolume-#{version}-#{arch}.pkg"

  uninstall_postflight do
    system_command "/usr/bin/killall",
                   args: ["coreaudiod"],
                   sudo: true
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
