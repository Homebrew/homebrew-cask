cask "softmaker-freeoffice" do
  version "2021"
  sha256 :no_check # required as upstream package is updated in place

  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version}.pkg",
      verified: "softmaker.net/"
  name "SoftMaker FreeOffice"
  desc "Office suite"
  homepage "https://www.freeoffice.com/"

  livecheck do
    url "https://www.freeoffice.com/en/download/servicepacks"
    regex(/softmaker[._-]freeoffice[._-](\d+(?:\.\d+)*)\.pkg/i)
  end

  pkg "softmaker-freeoffice-#{version}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version}"
end
