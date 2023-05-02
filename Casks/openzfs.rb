cask "openzfs" do
  on_arm do
    on_monterey :or_older do
      arch arm: "Monterey-12-arm64"
      version "2.1.6,433"
      sha256 "abb2f09081f9175190471dad5414b2a45c5d12f7e78ec55aa55ffb1e4822e3f8"
    end
    on_ventura :or_newer do
      arch arm: "Ventura-13-arm64"
      version "2.1.6,434"
      sha256 "3f9fa7a9d2b101a714f77d9c00f32b9e03f0cbfed9f2301f6eb6efb7fe13fe1e"
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
      version "2.1.6,431"
      sha256 "982172f0974fca4714c718fdf2669b0727865d75f0cdc07838c417ea75201a6a"
    end
    on_monterey do
      arch intel: "Monterey-12"
      version "2.1.6,432"
      sha256 "c458240c5b5433f6330401b6570438ed486b3324ee32f81951dc24b86df425f3"
    end
    on_ventura :or_newer do
      arch intel: "Ventura-13"
      version "2.1.6,437"
      sha256 "2343660854284fae1163b9a822981805d1b9b254dee79a18f7be9413cfb27415"
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
