cask "meru" do
  arch arm: "-arm64"

  version "3.62.1"
  sha256 arm:   "f686f7322b45a61c1224054182d22ca9d2b0408327e4d3f1a83f5382e7a9fb89",
         intel: "55fc41361493d8e9c6621ddcdaa481d0b36862d2fa0a1439e5f86003f8295815"

  url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}#{arch}.dmg"
  name "Meru"
  desc "Gmail desktop app"
  homepage "https://meru.so/"

  depends_on macos: :ventura

  app "Meru.app"

  uninstall quit: "sh.zoid.meru"

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
