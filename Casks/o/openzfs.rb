cask "openzfs" do
  version "2.3.0"

  on_mojave :or_older do
    arch intel: "MAVERICKS-10.9"

    sha256 "d45facdaaa80d2b79df309598027f0b48df65c560daf88f0883cebfe9fd9ea6c"
  end
  on_catalina do
    arch intel: "Catalina-10.15"

    sha256 "517f8348b7fedc45191c792bb67c6c07dca2ab1aeababa124ddea15b4600d7d7"
  end
  on_big_sur do
    arch intel: "Big.Sur-11"

    sha256 "95b507418394db9979f8214112f40308fc8244fa1808aea7a26b523da96aa1b9"

    depends_on arch: :x86_64
  end
  on_monterey do
    arch arm: "Monterey-12-arm64", intel: "Monterey-12"

    sha256 arm:   "80d3b2280feecb56692630866d278201180cb0ec2544afb8f5149d1b8c137727",
           intel: "cdf9533881bdd2da36966387cdb9ee0aada8fcca4dd3d89d8f4a313e4e5f184a"
  end
  on_ventura do
    arch arm: "Ventura-13-arm64", intel: "Ventura-13"

    sha256 arm:   "0f30a430636d73ea8e403dfa06fcf5fc58453076f390fec8d6f53fbc8c99c3cb",
           intel: "452ee298a821a377cf2d8af01a3b446ba39afab2ec05c5f27c286ad8d9e1c6ab"
  end
  on_sonoma do
    arch arm: "Sonoma-14-arm64", intel: "Sonoma-14"

    sha256 arm:   "01b762d369bdc26ad1e5d2b4c398acf82eefee153b611e5ab9f7686389d11d4b",
           intel: "eeb480aa4f05908aa150a759554da1de118e709faf117448bcc310a6f34defc5"
  end
  on_sequoia :or_newer do
    arch arm: "Sequoia-15-arm64", intel: "Sequoia-15"

    sha256 arm:   "4d634c845e5b469f0dee4186e89e40dc659f14daa46c493323b46f78ab45d78b",
           intel: "0de75e00932199d04187dc4e09d3b84218c957974dd3ecb837f7967340f4c90d"
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
