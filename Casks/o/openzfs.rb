cask "openzfs" do
  version "2.3.1"

  on_catalina :or_older do
    arch intel: "Catalina-10.15"

    sha256 "2732ba22aee62a17f6849c106969b1d09408a64826243dabcf8e5c6a5da99388"
  end
  on_big_sur do
    arch intel: "Big.Sur-11"

    sha256 "d21e78cdec4974bf1ac783fc780c782caf6a4bd37ad2307f0fa65f9a57b22fc1"

    depends_on arch: :x86_64
  end
  on_monterey do
    arch arm: "Monterey-12-arm64", intel: "Monterey-12"

    sha256 arm:   "46263c8eb0e815046d198e5f83bf5872ae0547f239497c02f2017666d93c3ea8",
           intel: "00ce848c2d79015a3e1b5f48096625dd77af09b5059a2d8bfde3e71d304f905d"
  end
  on_ventura do
    arch arm: "Ventura-13-arm64", intel: "Ventura-13"

    sha256 arm:   "dc56d95c7875659ba32396bd7406ced5895c9f9959c8fc77a6ee2e6157207f8d",
           intel: "e05f14f7c02512da10d0115e0e0712ac2cabbb5f0c3924831ae13af35abaf42b"
  end
  on_sonoma do
    arch arm: "Sonoma-14-arm64", intel: "Sonoma-14"

    sha256 arm:   "67c54fdc06fd25e9dbaa50bb82a8398260705535a5a105961ede948e594455e8",
           intel: "2ecf3d60288e1394031450da8bef6745839ff8ea557f8c834ba5fdc2cc658bbe"
  end
  on_sequoia do
    arch arm: "Sequoia-15-arm64", intel: "Sequoia-15"

    sha256 arm:   "33696809cf79cbce5917f37f5688141b73864225dce70cd4c56e0b56f01529b6",
           intel: "8b25a116a89b021d25839af1f9a4e1ffc240c44aa0ec000d265a3f43d50d2086"
  end
  on_tahoe :or_newer do
    arch arm: "Tahoe.26-26-arm64", intel: "Tahoe.26-26"

    sha256 arm:   "ad5927077e15999ea37f134069267de9609b39768c28b2ff400219dac74382a2",
           intel: "f6a8910eb450b04a9b8f46fb190f2f5cc1a79e2198cf6533491b64b54500afd0"
  end

  url "https://github.com/openzfsonosx/openzfs-fork/releases/download/zfs-macOS-#{version}/OpenZFSonOsX-#{version}-#{arch}.pkg",
      verified: "github.com/openzfsonosx/openzfs-fork/"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "OpenZFSonOsX-#{version}-#{arch}.pkg"
  bash_completion "/etc/bash_completion.d/zfs"
  bash_completion "/etc/bash_completion.d/zpool"

  postflight do
    set_ownership "/usr/local/zfs"
  end

  uninstall_preflight do
    system "sudo", "/usr/local/zfs/bin/zpool", "export", "-af"
  end

  uninstall launchctl: [
              "org.openzfsonosx.InvariantDisks",
              "org.openzfsonosx.zconfigd",
              "org.openzfsonosx.zed",
              "org.openzfsonosx.zpool-import",
              "org.openzfsonosx.zpool-import-all",
            ],
            pkgutil:   "org.openzfsonosx.zfs"

  zap trash: [
    "~/Library/LaunchDaemons/org.openzfsonosx.InvariantDisks.plist",
    "~/Library/LaunchDaemons/org.openzfsonosx.zconfigd.plist",
    "~/Library/LaunchDaemons/org.openzfsonosx.zed.plist",
    "~/Library/LaunchDaemons/org.openzfsonosx.zpool-import-all.plist",
    "~/Library/LaunchDaemons/org.openzfsonosx.zpool-import.plist",
  ]

  caveats do
    kext
  end
end
