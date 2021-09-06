cask "soqlxplorer" do
  version "4.0"
  sha256 "2762179fb303ca837a3d8cc75608e2e078055c058791f959689651ec2707112c"

  url "https://www.pocketsoap.com/osx/soqlx/SoqlXplorer_v#{version}.zip"
  name "SoqlXplorer"
  desc "Desktop client for Salesforce.com platform"
  homepage "https://www.pocketsoap.com/osx/soqlx/"

  livecheck do
    url "https://www.pocketsoap.com/osx/soqlx/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "SoqlXplorer.app"

  zap trash: [
    "~/Library/Caches/com.pocketsoap.osx.SoqlXplorer",
    "~/Library/Preferences/com.pocketsoap.osx.SoqlXplorer.plist",
  ]
end
