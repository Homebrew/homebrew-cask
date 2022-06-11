cask "cakebrewjs" do
  version "1.1.0"
  sha256 "76c7305c563506c67258941895832f383e765304c5be4231f20bf55500181992"

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
