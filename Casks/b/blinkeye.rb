cask "blinkeye" do
  version "2.7.9"
  sha256 "995abd34b7a358724b0fb0737ce0fa86d980cdd31d543a44269f9b3bc66490eb"

  url "https://github.com/nomandhoni-cs/blink-eye/releases/download/v#{version}/Blink.Eye_#{version}_aarch64.dmg",
      verified: "github.com/nomandhoni-cs/blink-eye/"
  name "Blink Eye"
  desc "Eye care and break reminder app"
  homepage "https://blinkeye.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Blink Eye.app"

  zap trash: [
    "~/Library/Application Support/com.blinkeye.app",
    "~/Library/Caches/com.blinkeye.app",
    "~/Library/Preferences/com.blinkeye.app.plist",
    "~/Library/Saved Application State/com.blinkeye.app.savedState",
  ]
end
