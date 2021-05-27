cask "browserstacklocal" do
  version "3.2.1"
  sha256 :no_check

  url "https://www.browserstack.com/local-testing/downloads/native-app/BrowserStackLocal.dmg"
  name "BrowserStack Local Testing"
  desc "Test localhost and staging websites"
  homepage "https://www.browserstack.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "BrowserStackLocal.app"
  binary "BrowserStackLocal.app/Contents/Resources/public/BrowserStackLocal"

  uninstall launchctl: "com.browserstack.local"

  zap trash: [
    "~/.bstack",
    "~/Library/Caches/com.browserstack.Local",
  ]
end
