cask "okta-advanced-server-access" do
  version "1.67.4"
  sha256 "89fefea34d170fd1bd61a40b2c7c5b63a78c859bd9320c0c448e681b7bdc308f"

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
