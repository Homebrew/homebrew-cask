cask "caprine" do
  version "2.57.0"
  sha256 "d42e4ec766a84092b0e5a37242d72b4acf4db1f426b0792ce7ffb274d7e8eb2e"

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/sindresorhus/caprine"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

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
