cask "devcleaner" do
  version "2.3.1-425"
  sha256 "d31a01b35e77e5bf6a7a87fde660712c46c69baefd83cfdf62403e1c221ff2cc"

  url "https://github.com/vashpan/xcode-dev-cleaner/releases/download/#{version.sub(%r{\-\d+}, '')}/DevCleaner-#{version}.zip"
  name "DevCleaner"
  desc "Reclaim tens of gigabytes of your storage used for various Xcode caches"
  homepage "https://github.com/vashpan/xcode-dev-cleaner"

  livecheck do
    url "https://github.com/vashpan/xcode-dev-cleaner/releases/latest"
    regex(/href=.*releases\/download\/.*\/DevCleaner\-(.*)\.zip/i)
  end
  
  app "DevCleaner.app"

  zap trash: [
    "~/Library/Containers/com.oneminutegames.XcodeCleaner",
    "~/Library/Application Scripts/com.oneminutegames.XcodeCleaner",
    "~/Library/Application Support/CrashReporter/DevCleaner*.plist",
  ]
end
