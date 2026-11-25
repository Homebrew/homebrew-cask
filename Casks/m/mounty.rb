cask "mounty" do
  version "2.4"
  sha256 "b5f0867af3ee034c61582bc40e6ebeae549cb4570381ba82d012aca8d5c72888"

  url "https://mounty.app/releases/Mounty-#{version}.dmg"
  name "Mounty for NTFS"
  desc "Re-mounts write-protected NTFS volumes"
  homepage "https://mounty.app/"

  livecheck do
    url :homepage
    regex(/Latest\s+version:\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Mounty.app"

  zap trash: "~/Library/Preferences/com.cu4uc.mounty.plist"
end
