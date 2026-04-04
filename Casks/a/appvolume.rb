cask "appvolume" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.37"
  sha256 arm:   "69e265b476d3bdfb11aef307259ce4420beb36bf576b15290dcea3b38593e423",
         intel: "b5658557d752dfdac7a89efeadbd9192b27865cb2085fb03322945507380db02"

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
