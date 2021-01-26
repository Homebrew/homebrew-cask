cask "mounty" do
  if MacOS.version <= :catalina
    version "1.9"
    sha256 :no_check
    url "https://mounty.app/releases/Mounty-#{version}.dmg"
  else
    version "1.11,16"
    sha256 :no_check
    url "https://mounty.app/releases/Mounty.dmg"
  end

  name "Mounty for NTFS"
  desc "Re-mounts write-protected NTFS volumes"
  homepage "https://mounty.app/"

  app "Mounty.app"
end
