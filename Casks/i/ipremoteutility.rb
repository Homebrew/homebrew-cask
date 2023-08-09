cask "ipremoteutility" do
  version "1.9.2"
  sha256 "9b0e58745d80587ed89a9ac3da2c03adee0d7404bad26f526a444f1dc74725e9"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOSX.zip"
  name "Flanders IP Remote Utility"
  desc "Management of Flanders Scientific hardware"
  homepage "https://www.flandersscientific.com/ip-remote/"

  livecheck do
    url :homepage
    regex(/href=.*?IPRemoteUtility[._-]v?(\d+(?:\.\d+)+)-macOSX\.zip/i)
  end

  app "IPRemoteUtility.app"
end
