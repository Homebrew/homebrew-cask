cask "app-fair" do
  version "0.8.50"
  sha256 "13ff50c75381405ce80c0122ad152714a7210f2cf5d12daed0e30b6889992244"

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
    "~/Library/Caches/app.App-Fair",
    "~/Library/Containers/app.App-Fair",
    "~/Library/Preferences/app.App-Fair.plist",
    "~/Library/Saved Application State/app.App-Fair.savedState",
  ]
end
