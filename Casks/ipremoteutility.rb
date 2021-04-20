cask "ipremoteutility" do
  version "1.8.7"
  sha256 "bbcfb710919bdb17bd7416663b0c5965251b45d4267c46fe299566da6bf54435"

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
