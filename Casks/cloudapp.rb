cask "cloudapp" do
  version "6.6.8,2331"
  sha256 "0acc45e8a2e5088614907d25f1f846df6f90facf58014f25be632955c1e1806b"

  url "https://downloads.getcloudapp.com/mac/CloudApp-#{version.csv.first}.#{version.csv.last}.zip"
  name "CloudApp"
  desc "Visual communication platform"
  homepage "https://www.getcloudapp.com/"

  livecheck do
    url "https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CloudApp.app"

  zap trash: "~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist"
end
