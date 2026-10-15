cask "littlebird" do
  arch arm: "arm64", intel: "x64"

  version "0.86.57"
  sha256 arm:   "636477976eb28078d053633d267848d4b1ee36c28806e81a8233926ba8c9f08b",
         intel: "c98e681a9beb33fa36947fda945688e7030752fae0381d0fb27caa8a0aa3407d"

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
