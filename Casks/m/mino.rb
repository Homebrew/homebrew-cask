cask "mino" do
  version "0.1.1"
  sha256 "254efc1a641c692592f44fca4e9ef34533b6631301bb483e58bc73cb442cb989"

  url "https://github.com/robinv8/mino/releases/download/v#{version}/Mino-#{version}.dmg",
      verified: "github.com/robinv8/mino/"
  name "Mino"
  desc "Open-source client for AI agents"
  homepage "https://robinv8.github.io/mino/"

  depends_on macos: ">= :sonoma"

  app "Mino.app"

  zap trash: [
    "~/Library/Application Support/com.mino.app",
    "~/Library/Caches/com.mino.app",
    "~/Library/Preferences/com.mino.app.plist",
  ]
end
