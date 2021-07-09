cask "cloudapp" do
  version "6.5.2,2245"
  sha256 "b3db3b870775039678407b053a8f2ec028f49ba62c2f743c9e01b419f03fca11"

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
