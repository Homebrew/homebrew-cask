cask "openzfs" do
  version "2.4.1p2"

  on_big_sur :or_older do
    arch intel: "Big.Sur-11"

    sha256 "c11a74b394e902265608dd73d2d05011b16acac33c8d1d869a19c840509dbe72"

    depends_on arch: :x86_64
  end
  on_monterey do
    arch arm: "Monterey-12-arm64", intel: "Monterey-12"

    sha256 arm:   "05a357c155770df6f93cb2623cdd5737d2a41ad6cf3f2dc723d94d097037b5f0",
           intel: "9757746f9401687e382f7cdfda80c8f827f478379be76ac587664f8cb6430910"
  end
  on_ventura do
    arch arm: "Ventura-13-arm64", intel: "Ventura-13"

    sha256 arm:   "cfbfb7f39e047c3c5232799fedf26bac6f674ef1dc7a34364231b36f7dd46561",
           intel: "ee3c779da3be97f8ba9c6f868c7bec877fc26c25f07a17e79aae782131bf22f3"
  end
  on_sonoma do
    arch arm: "Sonoma-14-arm64", intel: "Sonoma-14"

    sha256 arm:   "c6f07507e0594c1d7f77adb3878d45558b3ddd09064676b118d271581fef6705",
           intel: "cc2716f0ef15a53211fff079922b15e94616b9ee1f689a859085a32541d441ad"
  end
  on_sequoia do
    arch arm: "Sequoia-15-arm64", intel: "Sequoia-15"

    sha256 arm:   "9f8ca1b894974244dc2f0f362fcae0ed05b0082bbaf72ef7215939cdad272769",
           intel: "62dca33ac2e2a724865c072c5fb2f152a532da28886efd055414be498d7fe077"
  end
  on_tahoe do
    arch arm: "Tahoe.26-26-arm64", intel: "Tahoe.26-26"

    sha256 arm:   "582ffd6bb083ed9de123994b5609da39ed9347e624d81474ba3f2dc53a0e5f21",
           intel: "399ce127ce1fc0eb462346af4553c337a76adc82516033e34e74a21cc6a5c828"
  end
  on_golden_gate :or_newer do
    arch arm: "GoldenGate-27-arm64"

    sha256 "4123057fe0a4ff6fe56d4d500255cae1fc94057c9b08389069cbf411b7b27c43"

    depends_on arch: :arm64
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
