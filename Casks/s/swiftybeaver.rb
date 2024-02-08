cask "swiftybeaver" do
  version "1.1.0"
  sha256 "1a12cf1061aac8cb455ebce2898b8165f89c5016b3befdbbe71ebbcef6680f0a"

  url "https://swiftybeaver.s3.amazonaws.com/SBMac-#{version}.zip",
      verified: "swiftybeaver.s3.amazonaws.com/"
  name "SwiftyBeaver"
  desc "Swift logging"
  homepage "https://swiftybeaver.com/"

  livecheck do
    url "https://swiftybeaver.s3.amazonaws.com/sbmac-appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "SwiftyBeaver.app"
end
