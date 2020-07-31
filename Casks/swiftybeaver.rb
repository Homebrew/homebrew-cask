cask "swiftybeaver" do
  version "1.1.0"
  sha256 "1a12cf1061aac8cb455ebce2898b8165f89c5016b3befdbbe71ebbcef6680f0a"

  # swiftybeaver.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://swiftybeaver.s3.amazonaws.com/SBMac-#{version}.zip"
  appcast "https://swiftybeaver.s3.amazonaws.com/sbmac-appcast.xml"
  name "SwiftyBeaver"
  homepage "https://swiftybeaver.com/"

  app "SwiftyBeaver.app"
end
