cask "ipremoteutility" do
  version "1.8.9"
  sha256 "6ebee95ba683199b309e0341858fed2618e6b47b88b63f30a4a4470d54e419cb"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOSX.zip"
  name "Flanders IP Remote Utility"
  desc "Management of Flanders Scientific hardware"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    regex(/href=.*?IPRemoteUtility[._-]v?(\d+(?:\.\d+)+)-macOSX\.zip/i)
  end

  container nested: "IPRemoteUtility-#{version}-macOSX/IPRemoteUtility-#{version}.dmg"

  app "IPRemoteUtility.app"
end
