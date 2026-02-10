cask "appvolume" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.33"
  sha256 arm:   "2187b44517c674a2cc5b4f047d71fb1b0fdcfc5135e039e57e86918d20fa9d14",
         intel: "04c1790ef05a1de6c91f01799e6a1694b7e62a3d179a2a6d98674a1c167ffb42"

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
