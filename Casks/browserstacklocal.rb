cask "browserstacklocal" do
  version "3.3.2"
  sha256 :no_check

  url "https://www.browserstack.com/local-testing/downloads/native-app/BrowserStackLocal.dmg"
  name "BrowserStack Local Testing"
  desc "Test localhost and staging websites"
  homepage "https://www.browserstack.com/"

  livecheck do
    url "https://www.browserstack.com/local-testing/downloads/native-app/mac/appcast.xml"
    strategy :sparkle
  end

  app "BrowserStackLocal.app"

  uninstall launchctl: "com.browserstack.local"

  zap trash: [
    "~/.bstack",
    "~/Library/Caches/com.browserstack.Local",
  ]
end
