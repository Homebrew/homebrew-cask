cask "caprine" do
  arch arm: "-arm64"

  version "2.60.3"
  sha256 arm:   "2fdaa6834122265bdd7b34ff92a3629508217a90730021a13a1ce2561219dcd6",
         intel: "e5d1acd6fc7436ba764dbafae0ed42cd19b42900876585015041e6e0a2dc815c"

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}#{arch}.dmg"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/sindresorhus/caprine"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
