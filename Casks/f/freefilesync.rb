cask "freefilesync" do
  version "14.13"
  sha256 "1b68234019cc502ef58cdabf07e72c32caec78384f0588a792198dcd9aa05225"

  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Folder comparison and synchronization software"
  homepage "https://freefilesync.org/"

  livecheck do
    url "https://freefilesync.org/download.php"
    regex(/href=.*?FreeFileSync[._-]v?(\d+(?:\.\d+)+)(?:[._-]macOS)?\.zip/i)
  end

  depends_on :macos

  pkg "FreeFileSync_#{version}.pkg"

  uninstall pkgutil: [
              "org.freefilesync.pkg.FreeFileSync",
              "org.freefilesync.pkg.RealTimeSync",
            ],
            delete:  "/usr/local/bin/freefilesync"

  zap trash: [
    "~/Library/Application Support/FreeFileSync",
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
  ]

  caveats do
    files_in_usr_local
  end
end
