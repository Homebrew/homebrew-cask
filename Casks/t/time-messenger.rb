cask "time-messenger" do
  arch arm: "arm64", intel: "x64"

  version "5.30.5"
  sha256 arm:   "726cfff6783f23d37d86b31023887d890988afe002b2e8ffe5fedd03d2ce5110",
         intel: "6a98bf129eedf6a58e973fc938c3f118b4d33e3f8fdac8b1aa1e7f6d47d0e91f"

  url "https://messenger-desktop-clients.t-static.ru/on-premise/desktop/time-desktop-#{version}-mac-#{arch}.zip"
  name "Time"
  desc "Corporate messenger"
  homepage "https://time-messenger.ru/"

  livecheck do
    url "https://messenger-desktop-clients.t-static.ru/on-premise/desktop/latest-mac-#{arch}.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Time.app"

  zap trash: [
    "~/Library/Application Support/TiMe",
    "~/Library/Logs/Time",
    "~/Library/Preferences/ru.tfinance.itsa-orcs.messenger.desktop.plist",
  ]
end
