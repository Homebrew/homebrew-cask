cask "sevoflurane" do
  version "1.15.2"
  sha256 "43fdde3b02ccee2268831449255a0374c59b9cbd624e846b7ba2b5d4a350e333"

  url "https://github.com/kageroumado/sevoflurane/releases/download/v#{version}/Sevoflurane-#{version}.dmg"
  name "Sevoflurane"
  desc "Steam client for running Windows games"
  homepage "https://kagerou.glass/sevoflurane/"

  auto_updates true
  depends_on macos: :tahoe

  app "Sevoflurane.app"

  zap trash: [
    "~/Library/Application Support/Sevoflurane/Compat",
    "~/Library/Application Support/Sevoflurane/Control",
    "~/Library/Caches/glass.kagerou.sevoflurane",
    "~/Library/HTTPStorages/glass.kagerou.sevoflurane",
    "~/Library/Logs/Sevoflurane.log",
    "~/Library/Preferences/glass.kagerou.sevoflurane.plist",
    "~/Library/Preferences/glass.kagerou.sevoflurane.shared.plist",
  ]
end
