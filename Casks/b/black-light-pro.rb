cask "black-light-pro" do
  version "1.2"
  sha256 "0f97fba22628e1a4c5684d6271fa0477cf97a9e7361dd92fecdd04c3f2f8dbf4"

  url "https://littoral.michelf.ca/apps/black-light-pro/black-light-pro-#{version}.zip"
  name "Black Light Pro"
  desc "Colour effects on a schedule"
  homepage "https://michelf.ca/software/black-light-pro/"

  livecheck do
    url :homepage
    regex(/href=.*?black[._-]light[._-]pro[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "BLack Light Pro.app"

  zap trash: [
    "~/Library/Application Scripts/ca.michelf.BlackLight.Pro",
    "~/Library/Containers/ca.michelf.BlackLight.Pro",
  ]

  caveats do
    requires_rosetta
  end
end
