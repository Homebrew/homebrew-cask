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

    version "2.4.1p1"
    sha256 arm:   "9d2c9719cc124eb62c495e12b34ddbf0ab798ffde226581566de99cd8b73c74b",
           intel: "08d7f3ce61e52715d5cc91ad48e86eb859392461714be4998f76f6784acbf361"
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
    arch arm: "Tahoe-26-arm64", intel: "Tahoe-26"

    version "2.4.1p1"
    sha256 arm:   "222a5c091c3e1252bd886fa5b0e793a8c978421d60951ba9a36af4339c9a1b57",
           intel: "f37865a0bc06a6a6e913550be44454ab7b6b9c7135fafc0159e5cdd30ff1a987"
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
