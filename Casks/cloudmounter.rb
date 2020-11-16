cask "cloudmounter" do
  version "3.7.637"
  sha256 "d4566213701107251b4bba23302859b29c10c8d3432ee41ccbc298c38ee3b7fb"

  url "https://cdn.eltima.com/download/cloudmounter.dmg"
  appcast "https://cdn.eltima.com/download/cloudmounter-update/settings.xml",
          must_contain: version.major_minor
  name "Eltima CloudMounter"
  desc "Mounts cloud storages as local disks"
  homepage "https://mac.eltima.com/mount-cloud-drive.html"

  app "CloudMounter.app"
end
