cask "ipremoteutility" do
  version "1.9.1"
  sha256 "6f2254fb3dfa7bfc2a855b9ada906648f6ed01c9ac4c72a7743656e8e4a53f4b"

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
