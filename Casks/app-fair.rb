cask "app-fair" do
  version "0.8.70"
  sha256 "96762cc0c781ee7f58a5bfcc39415d998624737444c147a7eb39f723c30a8503"

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
