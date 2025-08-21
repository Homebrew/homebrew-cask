cask "okta-advanced-server-access" do
  version "1.94.1"
  sha256 "b615a81ee5c7dde9decc2a78b4e5d4e9dbe0e2a2e0bbaf703e8da7019fd67766"

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
