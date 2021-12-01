cask "softmaker-freeoffice" do
  version "2021"
  sha256 "721c5bc20eb343f87f5c373e61cb4a20f619fe1a98d61b921d75f7da8bcac593"

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
