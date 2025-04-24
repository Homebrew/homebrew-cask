cask "okta-advanced-server-access" do
  version "1.89.1"
  sha256 "e63448b05c75e601e837a316e0ec3239c52a310b375cda6e564e2ff3362a2e6c"

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

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: [
    "~/Library/Application Support/ScaleFT",
    "~/Library/Caches/com.scaleft.ScaleFT",
    "~/Library/HTTPStorages/com.scaleft.ScaleFT",
    "~/Library/Logs/ScaleFT",
    "~/Library/Preferences/com.scaleft.ScaleFT.plist",
  ]
end
