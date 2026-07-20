cask "freefilesync" do
  version "14.10"
  sha256 "ecd15aa76cb7c55c7d16cd9f0db44338fb7c1ae8a477f4fe5ad9d5e428f0437f"

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
