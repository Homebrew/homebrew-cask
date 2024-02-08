cask "mounty" do
  on_catalina :or_older do
    version "1.9"
    sha256 "5fcedfe712f59c14f39c3385dfed9aebc99d4e8d88f6e870f364cc48624590ef"

    livecheck do
      skip "newer versions only available for Big Sur or higher"
    end
  end
  on_big_sur :or_newer do
    version "2.4"
    sha256 "b5f0867af3ee034c61582bc40e6ebeae549cb4570381ba82d012aca8d5c72888"

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
