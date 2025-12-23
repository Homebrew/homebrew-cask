cask "dyad" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "13d93cf5dca4d1b2b08d243e5fbac8979c2cccdc3c15669451a16d1d07d5ca43",
         intel: "b171b32ef5c2a6b439e7c684ec50f4278e5ce19cbdbb649a0f2697863a3aaee9"

  url "https://github.com/dyad-sh/dyad/releases/download/v#{version}/dyad-darwin-#{arch}-#{version}.zip",
      verified: "github.com/dyad-sh/dyad/"
  name "Dyad"
  desc "AI-powered app builder"
  homepage "https://dyad.sh/"

  livecheck do
    url "https://api.dyad.sh/v1/update/stable/dyad-sh/dyad/darwin-#{arch}/0.0.0"
    regex(%r{/v?(\d+(?:\.\d+)+)/}i)
    strategy :json do |json|
      json["url"]&.[](regex, 1)
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "dyad.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.dyad.sfl*",
    "~/Library/Application Support/dyad",
    "~/Library/Caches/com.electron.dyad",
    "~/Library/Caches/com.electron.dyad.ShipIt",
    "~/Library/HTTPStorages/com.electron.dyad",
    "~/Library/Logs/dyad",
    "~/Library/Preferences/com.electron.dyad.plist",
  ], rmdir: "~/dyad-apps"
end
