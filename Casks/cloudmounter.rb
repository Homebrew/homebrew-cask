cask "cloudmounter" do
  version "3.6.611"
  sha256 "b9b90d9e634c63377b080f1b242c912213ad0f502f614951dcbe867d05fb010e"

  url "https://cdn.eltima.com/download/cloudmounter.dmg"
  appcast "https://cdn.eltima.com/download/cloudmounter-update/settings.xml",
          must_contain: version.major_minor
  name "Eltima CloudMounter"
  desc "Mounts cloud storages as local disks"
  homepage "https://mac.eltima.com/mount-cloud-drive.html"

  app "CloudMounter.app"
end
