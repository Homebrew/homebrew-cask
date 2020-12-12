cask "ipremoteutility" do
  version "1.8.4"
  sha256 "5aebab95b3cc13a7f2c2cf38cf5b9018fa10b813ff7a6b1a6c6ebe9ec6655f05"

  url "https://www.flandersscientific.com/ip-remote/release/IPRemoteUtility-#{version}-macOSX.zip"
  appcast "https://flandersscientific.com/ip-remote/"
  name "Flanders IP Remote Utility"
  homepage "https://www.flandersscientific.com/ip-remote/"

  app "IPRemoteUtility.app"
end
