cask "cloudapp" do
  version "6.4.5,2213"
  sha256 "1383799cb4123f6809e3ae2cf4b20926a3fd449356a6b89ec152c7152846022e"

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
