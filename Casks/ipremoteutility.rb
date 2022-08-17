cask "ipremoteutility" do
  version "1.9.0"
  sha256 "45863337c1eda97b123e9e1a4c319c9db22e4595b7d333a12b5f79bb203f15ce"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOSX.zip"
  name "Flanders IP Remote Utility"
  desc "Management of Flanders Scientific hardware"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    regex(/href=.*?IPRemoteUtility[._-]v?(\d+(?:\.\d+)+)-macOSX\.zip/i)
  end

  container nested: "IPRemoteUtility-#{version}-Rotary-macOSX/IPRemoteUtility-#{version}-Rotary.dmg"

  app "IPRemoteUtility.app"
end
