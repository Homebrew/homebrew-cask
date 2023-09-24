cask "caprine" do
  arch arm: "-arm64", intel: ""

  version "2.58.2"
  sha256 arm:   "1b8f5d19ed75cff49fdb4ba87bba4eebf2d50f9876ee9445f03a7095156791e5",
         intel: "b6647d3366a0873a4164fcec8e6d78544851ff309a2bc0ef0a1556b3d541ae07"

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}#{arch}.dmg"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/sindresorhus/caprine"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Caprine.app"

  zap trash: [
    "~/Library/Application Support/Caprine",
    "~/Library/Caches/com.sindresorhus.caprine",
    "~/Library/Caches/com.sindresorhus.caprine.ShipIt",
    "~/Library/Logs/Caprine",
    "~/Library/Preferences/com.sindresorhus.caprine.helper.plist",
    "~/Library/Preferences/com.sindresorhus.caprine.plist",
    "~/Library/Saved Application State/com.sindresorhus.caprine.savedState",
  ]
end
