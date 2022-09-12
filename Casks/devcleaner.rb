cask "devcleaner" do
  version "2.3.1"
  sha256 "d31a01b35e77e5bf6a7a87fde660712c46c69baefd83cfdf62403e1c221ff2cc"

  url "https://github.com/vashpan/xcode-dev-cleaner/releases/download/#{version}/DevCleaner-#{version}-425.zip"
  name "DevCleaner"
  desc "Reclaim tens of gigabytes of your storage used for various Xcode caches"
  homepage "https://github.com/vashpan/xcode-dev-cleaner"

  app "DevCleaner.app"

  zap trash: [
    "~/Library/Containers/com.oneminutegames.XcodeCleaner",
    "~/Library/Application Scripts/com.oneminutegames.XcodeCleaner",
    "~/Library/Application Support/CrashReporter/DevCleaner*.plist",
  ]
end
