cask "cloudmounter" do
  version "3.7,637"
  sha256 :no_check

  url "https://cdn.eltima.com/download/cloudmounter.dmg"
  appcast "https://cdn.eltima.com/download/cloudmounter-update/settings.xml",
          must_contain: version.major_minor
  name "Eltima CloudMounter"
  desc "Mounts cloud storages as local disks"
  homepage "https://mac.eltima.com/mount-cloud-drive.html"

  app "CloudMounter.app"
end
