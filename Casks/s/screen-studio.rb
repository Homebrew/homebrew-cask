cask "screen-studio" do
  arch arm: "-arm64"

  version "2.25.21"
  sha256 arm:   "35655bf399515e5b1b93d19bbe63e7d0add4b16e8088147080f64542ee85ac2c",
         intel: "776dc573a6947e1d1eb8a4814097bb7c9dfa42170d06e12f666dc964f2571423"

  url "https://screenstudioassets.com/Screen%20Studio-#{version}#{arch}-mac.zip",
      verified: "screenstudioassets.com/"
  name "Screen Studio"
  desc "Screen recorder and editor"
  homepage "https://www.screen.studio/"

  livecheck do
    url "https://www.screen.studio/api/trpc/appInfo.latestVersionInfo?input=%7B%22isBeta%22%3Afalse%7D"
    strategy :json do |json|
      json.dig("result", "data", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Screen Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.timpler.screenstudio.sfl*",
    "~/Library/Application Support/Screen Studio",
    "~/Library/Caches/com.timpler.screenstudio",
    "~/Library/Caches/com.timpler.screenstudio.ShipIt",
    "~/Library/HTTPStorages/com.timpler.screenstudio",
    "~/Library/Preferences/com.timpler.screenstudio.plist",
    "~/Library/Saved Application State/com.timpler.screenstudio.savedState",
    "~/Screen Studio Projects",
  ]
end
