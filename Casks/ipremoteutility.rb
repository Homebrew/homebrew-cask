cask "ipremoteutility" do
  version "1.8.6"
  sha256 "02fe5e2edb7e97384c7f2e89f7a17d83b57d8922b8de7a84fea59900acac4e18"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOSX.zip"
  name "Flanders IP Remote Utility"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/IPRemoteUtility-(\d+(?:\.\d+)*)-macOSX\.zip}i)
  end

  container nested: "IPRemoteUtility-#{version}-macOSX/IPRemoteUtility-#{version}.dmg"

  app "IPRemoteUtility.app"
end
