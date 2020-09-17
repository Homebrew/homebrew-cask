cask "icons8" do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version "5.7.4"
  sha256 "35c0ed3421607a7a7591b15e3c305c6efd52db6f6d73bc0950b19a49007b4ae0"

  url "https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg"
  appcast "https://desktop.icons8.com/updates/mac/icons8_cast.xml"
  name "Icons8 App"
  desc "App for browsing icon, photo and music packages"
  homepage "https://icons8.com/"

  app "Icons8.app"

  zap trash: [
    "~/Library/Preferences/com.visualpharm.Icons8.plist",
    "~/Library/Containers/com.visualpharm.StandaloneLoginHelper",
    "~/Library/Caches/com.visualpharm.Icons8",
    '~/Library/Application\ Support/com.visualpharm.Icons8',
    '~/Library/Application\ Scripts/com.visualpharm.StandaloneLoginHelper',
  ]
end
