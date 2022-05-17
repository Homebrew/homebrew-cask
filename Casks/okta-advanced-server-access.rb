cask "okta-advanced-server-access" do
  version "1.60.0"
  sha256 "ac4e0cd93d8db2b229236d259af3d7bddcad1950aa104c8bc85ef99830e4fa18"

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg",
      verified: "scaleft.com/"
  name "Okta Advanced Server Access"
  name "ScaleFT"
  desc "Identity and access management"
  homepage "https://help.okta.com/asa/en-us/Content/Topics/Adv_Server_Access/docs/sft-osx.htm"

  livecheck do
    url "https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg"
    strategy :header_match
  end

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end
