cask "k6-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.13.1"
  sha256 arm:   "723a50c320df17834d6a5ada3e8f6acd74fbf083989033c7bbb9c151526e7a7d",
         intel: "7df25c20178c38e337ac815d155197848dfb10993c4985d822bcf738a2afbc41"

  url "https://github.com/grafana/k6-studio/releases/download/v#{version}/k6.Studio-#{version}-#{arch}.dmg",
      verified: "github.com/grafana/k6-studio/"
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
