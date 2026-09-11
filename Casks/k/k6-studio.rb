cask "k6-studio" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "380133688e774540a974ea037cdefaf1340b12284c77092ff06fd2390e3348a8",
         intel: "20dcf6f3dd2e5e5e5e7380e9e5b5250f48ff9a12ef6231cafb25679a26290df0"

  url "https://github.com/grafana/k6-studio/releases/download/v#{version}/k6.Studio-#{version}-#{arch}.dmg"
  name "k6 Studio"
  desc "Application for generating k6 test scripts"
  homepage "https://grafana.com/docs/k6-studio"

  auto_updates true
  depends_on macos: :monterey

  app "k6 Studio.app"

  zap trash: [
        "~/Library/Application Support/k6 Studio",
        "~/Library/Caches/com.electron.k6-studio",
        "~/Library/Caches/com.electron.k6-studio.ShipIt",
        "~/Library/HTTPStorages/com.electron.k6-studio",
        "~/Library/Logs/k6 Studio",
        "~/Library/Preferences/com.electron.k6-studio",
        "~/Library/Saved Application State/com.electron.k6-studio.savedState",
      ],
      rmdir: "~/Documents/k6-studio"
end
