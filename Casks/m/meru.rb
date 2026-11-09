cask "meru" do
  arch arm: "-arm64"

  version "3.64.2"
  sha256 arm:   "0865ba03cb04953b68bd5751f6ed9b3a202f8243366acd29a9bace51ea93a710",
         intel: "f81da1839b35ef83bbb2c5a855c363c33855a3264e28e7565d1d72d80418ba20"

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
