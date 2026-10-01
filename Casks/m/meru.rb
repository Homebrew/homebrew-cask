cask "meru" do
  arch arm: "-arm64"

  version "3.62.0"
  sha256 arm:   "72e8c95aa8aeb9eb2e818f86d64fac6ad1123c5fee938d1dfd0ffa9fe9dff410",
         intel: "ef5d0006d6b6a04ecb785c278a97672f654a884ce813d0052ef4d22cb1c0b34e"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: :ventura

  app "Meru.app"

  zap trash: [
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
