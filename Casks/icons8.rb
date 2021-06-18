cask "icons8" do
  # NOTE: "8" is not a version number, but an intrinsic part of the product name
  version "5.7.4,57400"
  sha256 :no_check

  url "https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg"
  name "Icons8 App"
  desc "App for browsing icon, photo and music packages"
  homepage "https://icons8.com/"

  livecheck do
    url "https://desktop.icons8.com/updates/mac/icons8_cast.xml"
    strategy :sparkle
  end

  app "Icons8.app"

  zap trash: [
    "~/Library/Preferences/com.visualpharm.Icons8.plist",
    "~/Library/Containers/com.visualpharm.StandaloneLoginHelper",
    "~/Library/Caches/com.visualpharm.Icons8",
    '~/Library/Application\ Support/com.visualpharm.Icons8',
    '~/Library/Application\ Scripts/com.visualpharm.StandaloneLoginHelper',
  ]
end
