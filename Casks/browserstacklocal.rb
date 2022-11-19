cask "browserstacklocal" do
  version "3.5.5"
  sha256 "e0586e12c47d1fbc79806b58487f337a1e276cfc19ba7d138a8ba5fb51aa418e"

  url "https://www.browserstack.com/local-testing/downloads/native-app/BrowserStackLocal.tar.gz"
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
