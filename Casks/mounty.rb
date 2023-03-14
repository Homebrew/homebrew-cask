cask "mounty" do
  on_catalina :or_older do
    version "1.9"
    sha256 "5fcedfe712f59c14f39c3385dfed9aebc99d4e8d88f6e870f364cc48624590ef"

    livecheck do
      skip "newer versions only available for Big Sur or higher"
    end
  end
  on_big_sur :or_newer do
    version "2.0"
    sha256 "52bfb90e54368c62ad6fb980af610c6b30094426bbd22853265a8788e7e4e8eb"

    depends_on cask: "macfuse"
    caveats "Mounty Version 2 is depending on ntfs-3g-mac, you need to install this package before using Mounty.\nTo install, please issue\n\n$ brew tap gromgit/homebrew-fuse\n$ brew install ntfs-3g-mac"

    livecheck do
      url :homepage
      regex(/Latest\s+version:\s*(\d+(?:\.\d+)+)/i)
    end
  end

  url "https://mounty.app/releases/Mounty-#{version}.dmg"
  name "Mounty for NTFS"
  desc "Re-mounts write-protected NTFS volumes"
  homepage "https://mounty.app/"

  app "Mounty.app"

  zap trash: "~/Library/Preferences/com.cu4uc.mounty.plist"
end
