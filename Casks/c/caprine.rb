cask "caprine" do
  arch arm: "-arm64"

  version "2.59.3"
  sha256 arm:   "0c8c47bd26d3478f4400550d3c202abc69c001f1a5f951f6bd9a8fbae7adf66d",
         intel: "7e3e1b8a81bbd7420755d464aed3e5d1ac767a28719eea7a6f909bda68765c65"

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
