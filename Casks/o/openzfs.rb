cask "openzfs" do
  on_arm do
    on_monterey :or_older do
      arch arm: "Monterey-12-arm64"
      version "2.2.0,496"
      sha256 "2fb66a62d21319a6d818035e0c744e5991e485792ed5f2b9b32f11fb1d846f2a"
    end
    on_ventura :or_newer do
      arch arm: "Ventura-13-arm64"
      version "2.2.0,494"
      sha256 "0bd8871abf1658d18b0b5a38349f34f8ace4698676028ca3957c515836b1e9a5"
    end
  end
  on_intel do
    on_el_capitan :or_older do
      arch intel: "EL.CAPITAN-10.11"
      version "2.1.6,427"
      sha256 "8cccc2db29724d32de0db836d8649c0fb90fa7480624d66f354fd58d8d9199f4"
    end
    on_sierra do
      arch intel: "Sierra-10.12"
      version "2.1.6,428"
      sha256 "5285dc7f54f107023c129e22ec48e9c794e953e03537325d33a29254d237e726"
    end
    on_high_sierra do
      arch intel: "High.Sierra-10.13"
      version "2.1.6,429"
      sha256 "0b7ac146858fe0fb70b223d4ee1d9ef3fe2ef280d84d17d49e13205e0f5df7ea"
    end
    on_mojave do
      arch intel: "Mojave-10.14"
      version "2.1.6,430"
      sha256 "74d54451e1ffbabb982888e81b50e4310622bac65e7846ecf92df74e304bc98f"
    end
    on_catalina do
      arch intel: "Catalina-10.15"
      version "2.1.6,424"
      sha256 "b37bf6c86f103fd7d4a9b219e3d7a8c041acef2ae87a807ef97f976c731b089d"
    end
    on_big_sur do
      arch intel: "Big.Sur-11"
      version "2.2.0,491"
      sha256 "9e0a5616c9876b3df1cad6492e3522992db9af18a894a3ff1c3c1aae4bd11c42"
    end
    on_monterey do
      arch intel: "Monterey-12"
      version "2.2.0,493"
      sha256 "3549fcd07820ec75c6f21674988c7ad41dfd834976d9d8ca54e353ee46af3eaf"
    end
    on_ventura :or_newer do
      arch intel: "Ventura-13"
      version "2.2.0,495"
      sha256 "8818bb186c610e9d51b8e48ff4ad545794c835b0df246ff22b3e0dce37d74aba"
    end
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.csv.second}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    url "https://openzfsonosx.org/forum/viewforum.php?f=20"
    regex(/viewtopic.*t=(\d+).*zfs[._-]macOS[._-]v?(\d+(?:(?:\.)\d+)+)/i)
    strategy :page_match do |page|
      match = page.scan(regex)
      next if match.blank?

      post_id, version = match.first

      post_url = "https://openzfsonosx.org/forum/viewtopic.php?f=20&t=#{post_id}"
      download_id_regex = /href=.*file.php\?id=(\d+).+OpenZFSonOsX[._-]v?#{version}[._-]#{arch}\.pkg/i

      download_id = Homebrew::Livecheck::Strategy::PageMatch
                    .find_versions(url: post_url, regex: download_id_regex)[:matches].values.first
      next if download_id.blank?

      "#{version},#{download_id}"
    end
  end

  pkg "OpenZFSonOsX-#{version.csv.first}-#{arch}.pkg"

  postflight do
    set_ownership "/usr/local/zfs"
  end

  uninstall_preflight do
    system "sudo", "/usr/local/zfs/bin/zpool", "export", "-af"
  end

  uninstall pkgutil:   "org.openzfsonosx.zfs",
            launchctl: [
              "org.openzfsonosx.InvariantDisks",
              "org.openzfsonosx.zconfigd",
              "org.openzfsonosx.zed",
              "org.openzfsonosx.zpool-import",
              "org.openzfsonosx.zpool-import-all",
            ]

  caveats do
    kext
  end
end
