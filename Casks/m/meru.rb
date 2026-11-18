cask "meru" do
  arch arm: "-arm64"

  version "3.65.0"
  sha256 arm:   "d0dbd2cae993017259ff39e5096997b61a86269adcef6a41cdf0e3cac6c08de7",
         intel: "dc584518a2e49745e54d2450977c1722b6d7ade678eda274ee217c5db1105d88"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: :ventura

  app "Meru.app"

  uninstall quit: "sh.zoid.meru"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/sh.zoid.meru.sfl*",
    "~/Library/Application Support/Meru",
    "~/Library/Caches/meru-updater",
    "~/Library/Caches/sh.zoid.meru",
    "~/Library/Caches/sh.zoid.meru.ShipIt",
    "~/Library/HTTPStorages/sh.zoid.meru",
    "~/Library/Logs/Meru",
    "~/Library/Preferences/sh.zoid.meru.plist",
    "~/Library/Saved Application State/sh.zoid.meru.savedState",
    "~/Library/WebKit/sh.zoid.meru",
  ]
end
