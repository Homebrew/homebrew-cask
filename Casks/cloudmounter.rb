cask "cloudmounter" do
  version "3.11,698"
  sha256 :no_check

  url "https://cdn.eltima.com/download/cloudmounter.dmg"
  name "Eltima CloudMounter"
  desc "Mounts cloud storages as local disks"
  homepage "https://mac.eltima.com/mount-cloud-drive.html"

  livecheck do
    url "https://cdn.eltima.com/download/cloudmounter-update/settings.xml"
    strategy :sparkle
  end

  app "CloudMounter.app"
end
