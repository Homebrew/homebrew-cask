cask "mounty" do
  version "1.10,14"
  sha256 :no_check

  url "https://mounty.app/releases/Mounty.dmg"
  name "Mounty for NTFS"
  desc "Re-mounts write-protected NTFS volumes"
  homepage "https://mounty.app/"

  app "Mounty.app"
end
