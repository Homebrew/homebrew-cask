cask "littlebird" do
  arch arm: "arm64", intel: "x64"

  version "0.86.21"
  sha256 arm:   "d000db757a35545668bd24f155f30c10bcb61c8cf81c7d4b0adf89abcdc0a3f9",
         intel: "beee50ef7a14c4e6fc2a1d1a71237ef4cff264d552c218c17d3880cfb70215a2"

  url "https://downloads.littlebird.ai/#{arch}/Littlebird-Mac-#{arch}-#{version}-Installer.dmg"
  name "Littlebird"
  desc "AI assistant that captures meetings and work context"
  homepage "https://littlebird.ai/"

  livecheck do
    url "https://downloads.littlebird.ai/arm64/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Littlebird.app"

  uninstall launchctl: "com.genos.littlebird.ShipIt",
            quit:      "com.genos.littlebird"

  zap trash: [
    "~/Library/Application Support/@littlebird",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.genos.littlebird.sfl*",
    "~/Library/Application Support/com.genos.contextkit-cli",
    "~/Library/Application Support/CrashReporter/Littlebird_*.plist",
    "~/Library/Application Support/Littlebird",
    "~/Library/Caches/com.genos.contextkit-cli",
    "~/Library/HTTPStorages/com.genos.contextkit-cli",
    "~/Library/HTTPStorages/com.genos.littlebird",
    "~/Library/Logs/@littlebird",
    "~/Library/Logs/Littlebird",
    "~/Library/Preferences/ByHost/com.genos.littlebird.ShipIt.*.plist",
    "~/Library/Preferences/com.genos.littlebird.plist",
  ]
end
