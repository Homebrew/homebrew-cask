cask "dyad" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "2751aeb89a413e12f050f15f9c872ba371acd50da9414895106576c8ca3b1196",
         intel: "51438233718caf3dffae87dd3237b15f9c2aa75f71a22c1467ce625a02bc5671"

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
  depends_on macos: :monterey

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
