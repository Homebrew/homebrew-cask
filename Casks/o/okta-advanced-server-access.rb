cask "okta-advanced-server-access" do
  version "1.83.1"
  sha256 "30be5bb662e3d80936ca0f2754a8db4e53e30d6541d301cdb0feea071ddfaffe"

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
  depends_on macos: ">= :high_sierra"

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
