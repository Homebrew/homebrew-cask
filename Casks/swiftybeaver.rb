cask "swiftybeaver" do
  version "1.1.0,1100"
  sha256 "1a12cf1061aac8cb455ebce2898b8165f89c5016b3befdbbe71ebbcef6680f0a"

  url "https://swiftybeaver.s3.amazonaws.com/SBMac-#{version.csv.first}.zip",
      verified: "swiftybeaver.s3.amazonaws.com/"
  name "SwiftyBeaver"
  homepage "https://swiftybeaver.com/"

  livecheck do
    url "https://swiftybeaver.s3.amazonaws.com/sbmac-appcast.xml"
    strategy :sparkle
  end

  app "SwiftyBeaver.app"
end
