cask "tinyhand" do
  version "1.1.0"
  sha256 "7ada4aa2ff1b2075c0bb9516374dd22dcf0f54fa86aa977cfa8e6769adbc4702"

  url "https://github.com/nilbuild/tinyhand/releases/download/v#{version}/TinyHand-#{version}.dmg"
  name "TinyHand"
  desc "Hand on a stick for pointing at things on the screen"
  homepage "https://tinyhand.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "TinyHand.app"

  uninstall quit: "com.kamranahmed.tinyhand"

  zap trash: [
    "~/Library/Application Support/TinyHand",
    "~/Library/Caches/com.kamranahmed.tinyhand",
    "~/Library/HTTPStorages/com.kamranahmed.tinyhand",
    "~/Library/Logs/TinyHand.log",
    "~/Library/Preferences/com.kamranahmed.tinyhand.plist",
  ]
end
