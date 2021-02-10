cask "sparkleshare" do
  version "3.28"
  sha256 "d0e561706b65d379ae947f77a2fc443395b69462d1dd968ac334155c73a38381"

  url "https://github.com/hbons/SparkleShare/releases/download/#{version}/sparkleshare-mac-#{version}.zip",
      verified: "github.com/hbons/SparkleShare/"
  appcast "https://github.com/hbons/SparkleShare/releases.atom"
  name "SparkleShare"
  desc "Tool to sync with any Git repository instantly"
  homepage "https://sparkleshare.org/"

  app "SparkleShare.app"
end
