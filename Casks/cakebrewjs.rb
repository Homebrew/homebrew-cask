cask "cakebrewjs" do
  version "1.3.6"
  sha256 "e5386afe07a7fc775b002b3e599275d528a83e4d8d52664b2a73277090e94d9c"

  url "https://downloads.sourceforge.net/cakebrewjs/v#{version}/cakebrewjs-#{version}-mac.zip"
  name "cakebrewjs"
  desc "Homebrew GUI app written in electron"
  homepage "https://sourceforge.net/projects/cakebrewjs"

  livecheck do
    url "https://sourceforge.net/projects/cakebrewjs/rss?"
    strategy :page_match
    regex(/cakebrewjs-(\d+(?:\.\d+)+)-mac\.zip/i)
  end

  app "cakebrewjs.app"

  zap trash: [
    "~/Library/Application Support/cakebrewjs",
    "~/Library/Caches/cakebrewjs",
    "~/Library/Preferences/com.electron.cakebrewjs.helper.plist",
    "~/Library/Preferences/com.electron.cakebrewjs.plist",
  ]
end
