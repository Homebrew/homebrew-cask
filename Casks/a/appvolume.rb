cask "appvolume" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.39"
  sha256 arm:   "633de18d3b5453f07c88720a7d79b38f39ba2a9cd93bdb1a7d78ae9bad8b931a",
         intel: "9fb6a0782b545dcddda8a42ac17e88e138e0965575e781d82cf07b83a2bce4a1"

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
