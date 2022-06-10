cask "app-fair" do
  version "0.8.51"
  sha256 "180167f0b15bd29232f48d7138f98cf1234c051e16c7f9bee2fdba809c6adf3b"

  url "https://github.com/App-Fair/App/releases/download/#{version}/App-Fair-macOS.zip",
      verified: "github.com/App-Fair/App/"
  name "App Fair"
  desc "Catalog of free and commercial native desktop applications"
  homepage "https://appfair.app/"

  depends_on macos: ">= :monterey"

  app "App Fair.app"
  binary "#{appdir}/App Fair.app/Contents/MacOS/App Fair", target: "app-fair"

  zap trash: [
    "~/Library/Application Scripts/app.App-Fair",
    "~/Library/Application Support/app.App-Fair",
    "~/Library/Caches/app.App-Fair",
    "~/Library/Containers/app.App-Fair",
    "~/Library/HTTPStorages/app.App-Fair",
    "~/Library/HTTPStorages/app.App-Fair.binarycookies",
    "~/Library/Preferences/app.App-Fair.plist",
    "~/Library/Saved Application State/app.App-Fair.savedState",
  ],
      rmdir: "/Applications/App Fair"
end
