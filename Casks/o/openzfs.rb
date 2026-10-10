cask "openzfs" do
  on_big_sur :or_older do
    arch intel: "Big.Sur-11"

    version "2.4.1p1"
    sha256 "7afe5ec004293b8053d13e1100415658193388c30c922eedcedcd5183bb41485"

    depends_on arch: :x86_64
  end
  on_monterey do
    arch arm: "Monterey-12-arm64", intel: "Monterey-12"

    version "2.4.1p1"
    sha256 arm:   "66ff2399eadf11db8c4f272d0286e30ed83c6b2109f4ba44cac0a6a24abb040f",
           intel: "584ff316ce9e97ea41f57bc2189d206981d6b827902c5984cc27535388464428"
  end
  on_ventura do
    arch arm: "Ventura-13-arm64", intel: "Ventura-13"

    # The ventura package for 2.4.1 is broken, so we keep the last working version for ventura
    version "2.3.1"
    sha256 arm:   "dc56d95c7875659ba32396bd7406ced5895c9f9959c8fc77a6ee2e6157207f8d",
           intel: "e05f14f7c02512da10d0115e0e0712ac2cabbb5f0c3924831ae13af35abaf42b"
  end
  on_sonoma do
    arch arm: "Sonoma-14-arm64", intel: "Sonoma-14"

    version "2.4.1p1"
    sha256 arm:   "75be527f4f6fefd3d2dc2aad672eecb8299dd7001a8ef4da97d5ebe9f3f1eb44",
           intel: "773d6d1880e9867ba9d9cf85fdacfbe89385388e1c94154f22b82bbd287a6ae4"
  end
  on_sequoia do
    arch arm: "Sequoia-15-arm64", intel: "Sequoia-15"

    version "2.4.1p1"
    sha256 arm:   "407f260b96fc84af064223dea402b21c5d0282549011abfd1e09c81f2e24516d",
           intel: "e4c0608131fa050bd5813e957e95ffe0204e895eddbf7a696b317a3fb55d40cd"
  end
  on_tahoe :or_newer do
    arch arm: "Tahoe.26-arm64", intel: "Tahoe.26-26"

    # Since there was no 2.4.1p1 version available for Tahoe, I went with the latest stable release.
    version "2.3.1p1"
    sha256 arm:   "9f0bb55e65aed506eacf79047bae823420b7c434f87fc3ae915b5e707d7f1658",
           intel: "5fde8d3317a3f5b9d8cd12a54436b2c927c3f24c621eb932931c3a3e1120d794"
  end

  url "https://github.com/openzfsonosx/openzfs-fork/releases/download/zfs-macOS-#{version}/OpenZFSonOsX-#{version}-#{arch}.pkg"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "OpenZFSonOsX-#{version}-#{arch}.pkg"
  bash_completion "/etc/bash_completion.d/zfs"
  bash_completion "/etc/bash_completion.d/zpool"

  postflight_steps do
    set_ownership "/usr/local/zfs"
  end

  uninstall_preflight_steps do
    # Only try to export the pools if zfs module is loaded
    if_path_exists "/dev/zfs" do
      run "/usr/local/zfs/bin/zpool", args: ["export", "-af"], sudo: true
    end
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
