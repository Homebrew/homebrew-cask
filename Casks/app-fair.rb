cask "app-fair" do
  version "0.8.53"
  sha256 "e97179eaafe761341f6a80525cca20384defcf4fbbc58ae2c480a7d1972d2a51"

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
