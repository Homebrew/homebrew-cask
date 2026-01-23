cask "appvolume" do
  version "0.1.31"

  on_arm do
    sha256 "4e4a954ee72ad8a884526b3be509c3f397ca8a2054ebd852c01dfae9234c0693"

    url "https://releases.appvolume.app/AppVolume-#{version}-arm64.pkg"

    pkg "AppVolume-#{version}-arm64.pkg"
  end
  on_intel do
    sha256 "771d556061a30722598b95a7e4115593cd1386bc0d8d22edb4acf82c7c16be7e"

    url "https://releases.appvolume.app/AppVolume-#{version}-x86_64.pkg"

    pkg "AppVolume-#{version}-x86_64.pkg"
  end

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

  uninstall launchctl: "io.appvolume.daemon",
            quit:      "io.appvolume",
            pkgutil:   [
              "io.appvolume.app",
              "io.appvolume.daemon",
              "io.appvolume.driver",
              "io.appvolume.ui",
            ],
            delete:    "/Library/Audio/Plug-Ins/HAL/AppVolumeAudioDevice.driver"

  zap trash: [
    "~/Library/Application Support/AppVolume",
    "~/Library/Caches/io.appvolume",
    "~/Library/Preferences/io.appvolume.plist",
  ]
end
