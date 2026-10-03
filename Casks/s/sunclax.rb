cask "sunclax" do
  version "2026.10.15"
  sha256 "1dbe9b2e9d2a9bca5458a82ea7ded77801355afbf6333838e38c0a0a57a45913"

  url "https://dl.maxclax.com/Sunclax-#{version}.dmg"
  name "Sunclax"
  desc "Keystroke counter and typing trainer that never records what you type"
  homepage "https://maxclax.com/sunclax/"

  livecheck do
    url "https://maxclax.com/version.json"
    strategy :json do |json|
      json.dig("sunclax", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Sunclax.app"

  zap trash: [
    "~/Library/Application Support/Sunclax",
    "~/Library/Caches/com.maxclax.keysun",
    "~/Library/Containers/com.maxclax.keysun.widgets",
    "~/Library/Group Containers/KGGPSXD7H2.com.maxclax.keysun",
    "~/Library/HTTPStorages/com.maxclax.keysun",
    "~/Library/Preferences/com.maxclax.keysun.plist",
  ]
end
