cask "ithoughtsx" do
  version "5.30.0"
  sha256 :no_check

  url "https://cdn.toketaware.com?download=iThoughtsX.zip",
      referer:    "https://www.toketaware.com/"
  name "iThoughtsX"
  desc "Mind mapping tool"
  homepage "https://www.toketaware.com/ithoughts-osx"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "iThoughtsX.app"

  zap trash: [
    "~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.toketaware.ithoughtsx/",
    "~/Library/Caches/com.toketaware.ithoughtsx/",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Application Support/com.toketaware.ithoughtsx/",
    "~/Library/Preferences/com.toketaware.ithoughtsx.plist",
  ]
end
