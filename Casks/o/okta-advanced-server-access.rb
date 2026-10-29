cask "okta-advanced-server-access" do
  version "1.117.0"
  sha256 "2544605ee70d2931687b467c3bafb1c8abb1c70d294102d9642a70d34564199e"

  url "https://dist.scaleft.com/repos/macos/stable/all/macos-client/v#{version}/ScaleFT-#{version}.pkg"
  name "Okta Advanced Server Access"
  name "ScaleFT"
  desc "Identity and access management"
  homepage "https://help.okta.com/asa/en-us/Content/Topics/Adv_Server_Access/docs/sft-osx.htm"

  livecheck do
    url "https://dist.scaleft.com/repos/macos/stable/all/macos-client/oktapam-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

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
