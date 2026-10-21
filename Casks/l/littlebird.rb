cask "littlebird" do
  arch arm: "arm64", intel: "x64"

  version "0.86.68"
  sha256 arm:   "eb2809f1f1477d1964470dab0979fe5cdb6c686c9eedede45f2ec04bbc5d91aa",
         intel: "f06ab524ba96275e40588d98e37d04e53573be95642b11a718150dc580b6d2a0"

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
