cask "cakebrewjs" do
  version "1.3.10"
  sha256 "67386b761986d8ce72c3dfdaf04b9adbfb96c9e3db82eb441264cfd24f122106"

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
