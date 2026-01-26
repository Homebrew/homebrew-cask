cask "browserstacklocal" do
  version "3.7.1"
  sha256 :no_check

  url "https://www.browserstack.com/local-testing/downloads/native-app/BrowserStackLocal.tar.gz"
  name "BrowserStack Local Testing"
  desc "Test localhost and staging websites"
  homepage "https://www.browserstack.com/"

  livecheck do
    url "https://www.browserstack.com/local-testing/downloads/native-app/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "BrowserStackLocal.app"

  uninstall launchctl: "com.browserstack.local",
            delete:    "~/Library/LaunchAgents/BrowserStackLocal.plist"

  zap trash: [
    "~/.browserstack",
    "~/Library/Caches/com.browserstack.Local",
    "~/Library/HTTPStorages/com.browserstack.local",
    "~/Library/HTTPStorages/com.browserstack.local.binarycookies",
    "~/Library/Preferences/com.browserstack.local.plist",
  ]

  caveats do
    requires_rosetta
  end
end
