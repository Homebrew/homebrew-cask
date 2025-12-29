cask "flclash" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.91"
  sha256 arm:   "8992e53920948d0f19ed775d43c4b75a726d8dc5b7d5cb82d8dce27e5d1d98fd",
         intel: "09ac542184ca591e3a2d595ff2b798313e3245119576923c836c11754ca43264"

  url "https://github.com/chen08209/FlClash/releases/download/v#{version}/FlClash-#{version}-macos-#{arch}.dmg"
  name "FlClash"
  desc "Multi-platform proxy client based on ClashMeta"
  homepage "https://github.com/chen08209/FlClash"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FlClash.app"

  zap trash: [
    "~/Library/Application Support/com.follow.clash",
    "~/Library/Caches/com.follow.clash",
    "~/Library/Preferences/com.follow.clash.plist",
    "~/Library/Saved Application State/com.follow.clash.savedState",
  ]
end
