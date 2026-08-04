cask "k6-studio" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "a4594920534d9b7f09a6b7e56c9151ef83abc809013b1447ead8f28e4b38d46a",
         intel: "572ec48cc712267546e4473cba75d8111287564582660d28b335292109e9bbce"

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
