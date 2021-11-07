cask "softmaker-freeoffice" do
  version "2021"
  sha256 "f864428886d227a9ca781eb26a7f3c6cb3d70c4ff19769e69b10a21cd0a44c3f"

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
