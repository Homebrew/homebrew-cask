cask "cloudapp" do
  version "6.4.4,2208"
  sha256 "8631204547ca151483a4c70aea6a440388e3ef0ae4ed972305cafd79b3e6018b"

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
