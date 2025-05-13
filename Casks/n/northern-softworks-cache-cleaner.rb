cask "northern-softworks-cache-cleaner" do
  version "20.5"
  sha256 :no_check

  # Homepage, livecheck regex, and app change with major macOS releases

  url "https://www.northernsoftworks.com/downloads/nscc.dmg"
  name "Northern Softworks Cache Cleaner"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/sequoiacachecleaner.html"

  livecheck do
    url :homepage
    regex(/Download\s*Sequoia\s*Cache\s*Cleaner\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Sequoia Cache Cleaner.app"

  zap trash: [
    "~/Library/Application Support/com.northernsw.nswCacheCleaner",
    "~/Library/Preferences/Sonoma Cache Cleaner Preferences",
    "~/Library/Preferences/Ventura Cache Cleaner Preferences",
    "~/Library/Saved Application State/com.northernsw.nswCacheCleaner.savedState",
  ]
end
