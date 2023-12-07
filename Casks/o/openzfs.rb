cask "openzfs" do
  on_arm do
    on_monterey :or_older do
      arch arm: "Monterey-12-arm64"
      version "2.2.2,504"
      sha256 "87f333bb7a4eb487441763ec838b59c3e814b4bef13350821580d265f075baf0"
    end
    on_ventura do
      arch arm: "Ventura-13-arm64"
      version "2.2.2,506"
      sha256 "182d78548d051adf22d880f192330f560421be32ae6314cc0ccc462cbf373c27"
    end
    on_sonoma :or_newer do
      arch arm: "Sonoma-14-arm64"
      version "2.2.2,507"
      sha256 "feecdfdb5aa30dcb64044355e01ceddc6016f2568b776ccb84276fab3d65c730"
    end
  end
  on_intel do
    on_el_capitan :or_older do
      arch intel: "EL.CAPITAN-10.11"
      version "2.2.0,487"
      sha256 "e8f2785128f3659a3bffc0f619926621f4451a2e0b5ee7be2d3be6072b0321bb"
    end
    on_sierra do
      arch intel: "Sierra-10.12"
      version "2.2.0,486"
      sha256 "7957a22e6db39351a2f84b06212cc807c673261e49988be14964c78efc97edff"
    end
    on_high_sierra do
      arch intel: "High.Sierra-10.13"
      version "2.2.0,488"
      sha256 "318e9866c87d7baa7b5262bd609c51f192cbcc2f05c0e8614f30d7bdaaa3ad73"
    end
    on_mojave do
      arch intel: "Mojave-10.14"
      version "2.2.0,489"
      sha256 "92d7a06e2ae5afc2de4d217775ca3d44a1684024e74588ebe28d82bae48b3679"
    end
    on_catalina do
      arch intel: "Catalina-10.15"
      version "2.2.0,490"
      sha256 "f877469bad532ef1178d9b927eeaefc5d894fec4ca210c148af10a2521735ccc"
    end
    on_big_sur do
      arch intel: "Big.Sur-11"
      version "2.2.0,491"
      sha256 "9e0a5616c9876b3df1cad6492e3522992db9af18a894a3ff1c3c1aae4bd11c42"
    end
    on_monterey do
      arch intel: "Monterey-12"
      version "2.2.2,505"
      sha256 "3549fcd07820ec75c6f21674988c7ad41dfd834976d9d8ca54e353ee46af3eaf"
    end
    on_ventura do
      arch intel: "Ventura-13"
      version "2.2.2,508"
      sha256 "d19fc25aee8b5f5300770fe56ba2928ecb7e196f79c7081386dca3f5f11fdbce"
    end
    on_sonoma :or_newer do
      arch intel: "Sonoma-14"
      version "2.2.2,509"
      sha256 "7200c6e55f0c53a24f979b5b5fbb76aacb43f63b79f878fa6882e39872c5f555"
    end
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.csv.second}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    url "https://openzfsonosx.org/forum/viewforum.php?f=20"
    regex(/viewtopic[^"' >]*t=(\d+).*zfs[._-]macOS[._-]v?(\d+(?:(?:\.)\d+)+)/i)
    strategy :page_match do |page, regex|
      # Find the first [stable] release topic on the News forum
      post_id, version = page.scan(regex).first
      next if post_id.blank? || version.blank?

      # Fetch the release topic page
      release_page = Homebrew::Livecheck::Strategy.page_content(
        "https://openzfsonosx.org/forum/viewtopic.php?f=20&t=#{post_id}",
      )
      next if release_page[:content].blank?

      # Find the `id` of the file for the current `arch`
      download_id_regex = /href=.*file.php\?id=(\d+).+OpenZFSonOsX[._-]v?#{version}[._-]#{arch}\.pkg/i
      download_id = release_page[:content][download_id_regex, 1]
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
