cask "origin" do
  version "10.5.111.50299"
  sha256 :no_check

  url "https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/Origin.dmg",
      verified: "origin-a.akamaihd.net/Origin-Client-Download/"
  name "Origin"
  desc "Play PC games and connect with your friends"
  homepage "https://www.origin.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Origin.app"

  zap trash: [
    "~/Library/Application Support/Origin",
    "~/Library/Caches/com.ea.Origin",
    "~/Library/Caches/Origin",
    "~/Library/LaunchAgents/com.ea.origin.WebHelper.plist",
    "~/Library/Saved Application State/com.ea.Origin.savedState",
  ]
end
