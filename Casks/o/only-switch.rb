cask "only-switch" do
  version "2.5.0"
  sha256 "6c81cbbd41393a0fab13b5c5b65dab1fa2023b8ac304259c2a7dc71239e211ab"

  url "https://github.com/jacklandrin/OnlySwitch/releases/download/release_#{version}/OnlySwitch.dmg"
  name "OnlySwitch"
  desc "System and utility switches"
  homepage "https://github.com/jacklandrin/OnlySwitch"

  livecheck do
    url :url
    regex(/release[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Only Switch.app"

  zap trash: [
    "~/Library/Application Support/OnlySwitch",
    "~/Library/Caches/jacklandrin.OnlySwitch",
    "~/Library/OnlySwitch",
    "~/Library/Preferences/jacklandrin.OnlySwitch.plist",
  ]
end
