cask "okta-advanced-server-access" do
  version "1.76.2"
  sha256 "8ad691a7b6c38877ddbf9343bb7a3818e24b24fad57272455c3f7d6304588ac9"

  url "https://dist.scaleft.com/repos/macos/stable/all/macos-client/v#{version}/ScaleFT-#{version}.pkg",
      verified: "dist.scaleft.com/repos/macos/stable/all/macos-client/"
  name "Okta Advanced Server Access"
  name "ScaleFT"
  desc "Identity and access management"
  homepage "https://help.okta.com/asa/en-us/Content/Topics/Adv_Server_Access/docs/sft-osx.htm"

  livecheck do
    url "https://dist.scaleft.com/repos/macos/stable/all/macos-client/oktapam-appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end
