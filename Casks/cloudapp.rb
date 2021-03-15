cask "cloudapp" do
  version "6.5.0,2238"
  sha256 "13481efa387f30007e72009ca2e952a11d5cea8aef88f7fd8b83ad597aa2db8f"

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
