cask "littlebird" do
  arch arm: "arm64", intel: "x64"

  version "0.86.40"
  sha256 arm:   "6077b68a24b3e0afa6c820b2fdfc471d17bae6a0bda071d63977db980ad97fbb",
         intel: "b039feb5616a2c8270836f577c97332c98436a9767c6941585bb2e985810ffd2"

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
