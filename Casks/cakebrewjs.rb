cask "cakebrewjs" do
  version "0.1.36"
  sha256 "db8846f07c8994ec662e7d1bc961d4aa6f6a04f1a3263b7680e0aa9406afe8e1"

  url "https://downloads.sourceforge.net/cakebrewjs/v#{version}/cakebrewjs-#{version}-mac.zip"
  name "cakebrewjs"
  desc "Homebrew GUI app written in electron"
  homepage "https://sourceforge.net/projects/cakebrewjs"

  livecheck do
    url "https://sourceforge.net/projects/cakebrewjs/rss?"
    strategy :page_match
    regex(/cakebrewjs-(\d+(?:\.\d+)*)-mac\.zip/i)
  end

  app "cakebrewjs.app"

  zap trash: [
    "~/Library/Application Support/cakebrewjs",
    "~/Library/Caches/cakebrewjs",
    "~/Library/Preferences/com.electron.cakebrewjs.helper.plist",
    "~/Library/Preferences/com.electron.cakebrewjs.plist",
  ]
end
