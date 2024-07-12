cask "ithoughtsx" do
  version "9.4.0"
  sha256 :no_check

  url "https://cdn.toketaware.com?download=iThoughtsX.zip",
      referer:    "https://www.toketaware.com/",
      user_agent: :fake
  name "iThoughtsX"
  desc "Mind mapping tool"
  homepage "https://www.toketaware.com/ithoughts-osx"

  deprecate! date: "2024-07-11", because: :unmaintained

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "iThoughtsX.app"

  zap trash: [
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Application Support/com.toketaware.ithoughtsx/",
    "~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.toketaware.ithoughtsx/",
    "~/Library/Caches/com.toketaware.ithoughtsx/",
    "~/Library/Preferences/com.toketaware.ithoughtsx.plist",
  ]
end
