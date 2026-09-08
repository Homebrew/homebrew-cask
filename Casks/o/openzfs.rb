cask "openzfs" do
  on_big_sur :or_older do
    arch intel: "Big.Sur-11"

    # Upstream didn't ship a Big Sur package after with 2.4.1
    version "2.3.1"
    sha256 "d21e78cdec4974bf1ac783fc780c782caf6a4bd37ad2307f0fa65f9a57b22fc1"

    depends_on arch: :x86_64
  end
  on_monterey do
    arch arm: "Monterey-12-arm64", intel: "Monterey-12"

    version "2.4.1"
    sha256 arm:   "67143cc1e47a5499a0e80c19e6d4a7cc836dbe581289e868069072cf05ad77d6",
           intel: "a407dd0f1115ee46e11209fc68bfd28595e130ae8bf36494d3f3c63531e96f52"
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

    version "2.4.1"
    sha256 arm:   "1dc35cd8278a483bf97cc7e8d0ca1ae89bec65999c479d7c9f9935cf2f4205fd",
           intel: "b851b09d9bda4cce27af8d985b6d6b48272999306e8fc42d3351ba1716c84075"
  end
  on_sequoia do
    arch arm: "Sequoia-15-arm64", intel: "Sequoia-15"

    version "2.4.1"
    sha256 arm:   "788703a95dd5ee12f85ceea89640b0193eb3fabacb1e9ed6f38515fe58e48d8f",
           intel: "e10d0c8961e6745e3cbbc4351e06df179a84c39c0cbbcd6421f403fe9c6508dd"
  end
  on_tahoe :or_newer do
    arch arm: "Tahoe.26-arm64", intel: "Tahoe.26-26"

    version "2.4.1"
    sha256 arm:   "6f363e0bcfc22b7f8a5ff09e748513fa914408b8d8a84d3e021fc0dd93e22567",
           intel: "24c2867bcaaac770de398ecbfbc7a023cf2189b32264f77568e0e4599daba726"
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
