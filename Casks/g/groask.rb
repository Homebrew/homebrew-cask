cask "groask" do
  version "1.8.28"
  sha256 "415dd1e5bde633392269fc8e7f5d1ffa64d9d57bcb16609e2145ccedcabcb224"

  url "https://github.com/ThinkerJack/groask-release/releases/download/v#{version}/GroAsk.dmg"
  name "GroAsk"
  desc "macOS menu bar AI launcher with quick access to multiple AIs"
  homepage "https://groask.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "GroAsk.app"

  zap trash: [
    "~/Library/Preferences/com.gro.ask.plist",
  ]
end
