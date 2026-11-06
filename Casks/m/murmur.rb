cask "murmur" do
  arch intel: "-intel"

  version "1.0.30,31"
  sha256 arm:   "1d44eecdf71eaf2062a7df8c3d6128adaa59ef80d39844c663ca82324430ab0f",
         intel: "ff41e598ccb89e3ac8698177190bf26be4bfc4716b59ba5f43be2d5cbe13edcd"

  url "https://pub-cccd11dcbf564e9cb1ec321ac823bdf0.r2.dev/Murmur-#{version.csv.first}-build-#{version.csv.second}#{arch}.dmg",
      verified: "pub-cccd11dcbf564e9cb1ec321ac823bdf0.r2.dev/"
  name "Murmur"
  desc "Offline text-to-speech with voice cloning"
  homepage "https://www.murmurtts.com/"

  livecheck do
    url "https://murmur-updates.tarunyadav9761.workers.dev/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Murmur.app"

  zap trash: [
    "~/Library/Application Support/Murmur",
    "~/Library/Caches/com.murmur.app",
    "~/Library/HTTPStorages/com.murmur.app",
    "~/Library/Preferences/com.murmur.app.plist",
    "~/Library/WebKit/com.murmur.app",
  ]
end
