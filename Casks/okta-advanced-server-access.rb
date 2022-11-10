cask "okta-advanced-server-access" do
  version "1.64.3"
  sha256 "8b5183ec3807f8b0a63feb311b4e0e38f34c3d613b557cd15fdfe315881c6bf2"

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
