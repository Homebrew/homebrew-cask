cask "k6-studio" do
  arch arm: "arm64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "fe812caeb32d1cd4c1d59afdb7c2475a0e198c715428befec5d4b3366f83b8d9",
         intel: "866a03f71b09b90fb4cd7bba9a96f7ea8344a19469f87d7a2b2c96c4965b482b"

  url "https://github.com/grafana/k6-studio/releases/download/v#{version}/k6.Studio-#{version}-#{arch}.dmg"
  name "k6 Studio"
  desc "Application for generating k6 test scripts"
  homepage "https://grafana.com/docs/k6-studio"

  auto_updates true
  depends_on macos: :monterey

  app "k6 Studio.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.k6-studio.sfl*",
        "~/Library/Application Support/k6 Studio",
        "~/Library/Caches/com.electron.k6-studio",
        "~/Library/Caches/com.electron.k6-studio.ShipIt",
        "~/Library/HTTPStorages/com.electron.k6-studio",
        "~/Library/Logs/k6 Studio",
        "~/Library/Preferences/com.electron.k6-studio",
        "~/Library/Preferences/com.electron.k6-studio.plist",
        "~/Library/Saved Application State/com.electron.k6-studio.savedState",
      ],
      rmdir: "~/Documents/k6-studio"
end
