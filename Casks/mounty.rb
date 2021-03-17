cask "mounty" do
  if MacOS.version <= :catalina
    version "1.9,13"
    sha256 "5fcedfe712f59c14f39c3385dfed9aebc99d4e8d88f6e870f364cc48624590ef"
    url "https://mounty.app/releases/Mounty-#{version.before_comma}.dmg"
  else
    version "1.12,19"
    sha256 :no_check
    url "https://mounty.app/releases/Mounty.dmg"
  end

  name "Mounty for NTFS"
  desc "Re-mounts write-protected NTFS volumes"
  homepage "https://mounty.app/"

  app "Mounty.app"
end
