cask "app-fair" do
  version "0.8.130"
  sha256 "ff8af58f674e03c8585eab166f81ec0aba426d6f80bdebc8f71c1c715919364c"

  url "https://github.com/App-Fair/App/releases/download/#{version}/App-Fair-macOS.zip",
      verified: "github.com/App-Fair/App/"
  name "App Fair"
  desc "Catalog of free and commercial native desktop applications"
  homepage "https://appfair.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
