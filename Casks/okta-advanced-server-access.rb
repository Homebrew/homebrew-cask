cask "okta-advanced-server-access" do
  version "1.52.2"
  sha256 "5aad5453e027def51c1248fe57e4286470100c948d72417e6b846584d28cc523"

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg",
      verified: "scaleft.com/"
  name "Okta Advanced Server Access"
  name "ScaleFT"
  desc "Identity and access management"
  homepage "https://help.okta.com/en/prod/Content/Topics/Adv_Server_Access/docs/sft-osx.htm"

  livecheck do
    url "https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg"
    strategy :header_match
  end

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end
