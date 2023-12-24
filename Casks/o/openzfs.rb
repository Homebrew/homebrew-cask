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
      version "2.2.2,514"
      sha256 "c85016155bf58da40ca87c3a7e7ac64f08d8a7446f2a06dd643a9c548c5bed56"
    end
    on_sierra do
      arch intel: "Sierra-10.12"
      version "2.2.2,515"
      sha256 "651ea2ba99f59cc38bde6139d50daa89a98ea5f797785926ea20ecb409246434"
    end
    on_high_sierra do
      arch intel: "High.Sierra-10.13"
      version "2.2.2,516"
      sha256 "020a1b0a1e2a8707ffca9a8671bb835ee1ecb9f03432dd8b67884250892d6dc0"
    end
    on_mojave do
      arch intel: "Mojave-10.14"
      version "2.2.2,518"
      sha256 "51f6276a37e00a5db0f81ad11e17d31115861ce088b576ad1f095762263c6573"
    end
    on_catalina do
      arch intel: "Catalina-10.15"
      version "2.2.2,511"
      sha256 "4f7bfb1f8dcc0c63386007fa3473642a561e1257a8e92e3c4c09232f87cbc15f"
    end
    on_big_sur do
      arch intel: "Big.Sur-11"
      version "2.2.2,517"
      sha256 "2cbe932cea62249ebeecf5c810984c3017a5fc0eb65d1ea734595d27355e21af"
    end
    on_monterey do
      arch intel: "Monterey-12"
      version "2.2.2,505"
      sha256 "cd335755ea327a11d642af3bfa355aeaebc5d4b2b991f40486bb08ed27af2521"
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

  uninstall launchctl: [
              "org.openzfsonosx.InvariantDisks",
              "org.openzfsonosx.zconfigd",
              "org.openzfsonosx.zed",
              "org.openzfsonosx.zpool-import",
              "org.openzfsonosx.zpool-import-all",
            ],
            pkgutil:   "org.openzfsonosx.zfs"

  caveats do
    kext
  end
end
