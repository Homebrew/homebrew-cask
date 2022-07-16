cask "app-fair" do
  version "0.8.74"
  sha256 "970d9d1874d4c7ecd3de2d8520f2fb61c4c9100b990ed8e7a175301b78b28e4e"

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
