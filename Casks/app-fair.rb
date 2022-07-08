cask "app-fair" do
  version "0.8.69"
  sha256 "606ae98a17e36fd4611affd61c5a5a026eb3a99d3875fcd0d524e93605102070"

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
