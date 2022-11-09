cask "okta-advanced-server-access" do
  version "1.64.1"
  sha256 "b0bc7a148f73b7cab08fd03491cb3d637a0eb63ead5b86d3cddbfbe64a4bb4dc"

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
