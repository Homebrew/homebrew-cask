cask "littlebird" do
  arch arm: "arm64", intel: "x64"

  version "0.87.160"
  sha256 arm:   "22c6a91c32dd6424afd1636d7e42206446be016b3324a3b852d3a306c3107d1d",
         intel: "d74f035c69689b1cc0553660a7ad1ac0d6a7aa6984adc2dd222c20aa69c6358a"

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
