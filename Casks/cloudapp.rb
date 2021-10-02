cask "cloudapp" do
  version "6.6.0,2271"
  sha256 "a3e27ff162a265884e81008f2e8dbb3becf23c5fa5560c04888766a989dd132a"

  url "https://downloads.getcloudapp.com/mac/CloudApp-#{version.before_comma}.#{version.after_comma}.zip"
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
