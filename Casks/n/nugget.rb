cask "nugget" do
  arch arm: "arm", intel: "intel"

  version "7.3.1"
  sha256 arm:   "fcc64370471a0c1087bd945febaa598b91616fc3106a8048263e2c660ed0d799",
         intel: "aaecaec949f9fd28e31c286c21130a36d0f73657ef62e229f7b092118fefce0c"

  url "https://github.com/leminlimez/Nugget/releases/download/v#{version}/Nugget_macOS_#{arch}.dmg"
  name "Nugget"
  desc "Customise your iOS device with animated wallpapers, disable daemons and more"
  homepage "https://github.com/leminlimez/Nugget"

  depends_on macos: ">= :big_sur"

  app "Nugget.app"

  zap trash: [
    "~/Library/Preferences/com.nugget.MGA Data.plist",
    "~/Library/Preferences/com.nugget.Nugget.plist",
    "~/Library/Preferences/com.nugget.settings.plist",
  ]
end
