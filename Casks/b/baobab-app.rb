cask "baobab-app" do
  version "50.0"
  sha256 "71d8f17f107518ee93ffe20f0f1f8b1bd1b1122ea8a5031f96bbf2af29f03722"

  url "https://github.com/bschrenk/baobab-disk-usage-analyzer-app-macos/releases/download/v#{version}/Baobab.dmg",
      verified: "github.com/bschrenk/baobab-disk-usage-analyzer-app-macos/"
  name "Baobab"
  name "Disk Usage Analyzer"
  desc "Disk space usage analyzer"
  homepage "https://apps.gnome.org/Baobab/"

  livecheck do
    url "https://github.com/bschrenk/baobab-disk-usage-analyzer-app-macos"
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Baobab.app"

  zap trash: [
    "~/Library/Preferences/org.gnome.baobab.plist",
    "~/Library/Application Support/baobab",
    "~/Library/Caches/org.gnome.baobab",
  ]
end
