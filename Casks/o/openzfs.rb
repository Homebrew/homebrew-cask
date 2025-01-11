cask "openzfs" do
  version "2.2.3"

  on_arm do
    on_monterey :or_older do
      arch arm: "Monterey-12-arm64"
      sha256 "a48db951f53660115eac6dba3ed44cd895eab83dfad7e558de1679f3adb96fbd"
    end
    on_ventura do
      arch arm: "Ventura-13-arm64"
      sha256 "572e56f8acdd1954f14ac8d49b2141a591872ac6337c2e7912e533e5cf04ff3c"
    end
    on_sonoma do
      arch arm: "Sonoma-14-arm64"
      sha256 "675a682b2bb0128772de9732331fbd45550163835059b9252721ce00d1ce3b54"
    end
    on_sequoia :or_newer do
      arch arm: "Sequoia-15-arm64"
      sha256 "6e78efa1c466e4aeaff26698c097cad4f3fb7e918bdda0502be932360ab3051f"
    end
  end
  on_intel do
    on_el_capitan :or_older do
      arch intel: "EL.CAPITAN-10.11"
      sha256 "116fdd786d0e13f75baf0edbca7caa4fe44100ca42a79c694e991f499e1d81e8"
    end
    on_sierra do
      arch intel: "Sierra-10.12"
      sha256 "926d6ddc08e2ffdd3cda09ceca2f369f600b5a6dd0b185f818782680ae105a00"
    end
    on_high_sierra do
      arch intel: "High.Sierra-10.13"
      sha256 "8d6a43553cf2ca825aad49b23a3d768c491d7ec8762ebb9f91c8ec4cd8148ca8"
    end
    on_mojave do
      arch intel: "Mojave-10.14"
      sha256 "c8218f12b82f3fc716f77724bf7d2d874016529d4f07058c9cebef5cf7d11c75"
    end
    on_catalina do
      arch intel: "Catalina-10.15"
      sha256 "1edb9039f420cc7cd07fc23b6aceb35dd554e7d8ec6e77dac0b5b19c837e7b07"
    end
    on_big_sur do
      arch intel: "Big.Sur-11"
      sha256 "78dfde1c85e771d04511399e5ffb42a9f51a5725ae322bb5a51d078f9e900743"
    end
    on_monterey do
      arch intel: "Monterey-12"
      sha256 "092622af78a32e44f606cae01b5984af99eb8f91b9780054709ac78acd6b8778"
    end
    on_ventura do
      arch intel: "Ventura-13"
      sha256 "f413daf347e2a1ba98b5ca9ba08bba988106f446200dd498364df3afc36bf18e"
    end
    on_sonoma do
      arch intel: "Sonoma-14"
      sha256 "a742b587085f0d547b4cab404f3df197f32ef5089b606bd36f9a076e8fa46897"
    end
    on_sequoia :or_newer do
      arch intel: "Sequoia-15"
      sha256 "2cec90b23e7aa88385b5ef762229689a891f40c55c63cd64c4eefe24b286e880"
    end
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
