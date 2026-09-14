cask "deezer" do
  version "7.1.340"
  sha256 "f39ec43d1d46ec72cef73762e079c4c9792468fd7b254c0f16861252e5cfde4c"

  url "https://www.deezer.com/desktop/download/artifact-darwin-x64-#{version}"
  name "Deezer"
  desc "Music player"
  homepage "https://www.deezer.com/download"

  livecheck do
    url "https://www.deezer.com/desktop/update/latest.yml?architecture=x64&platform=darwin&platformVersion=99"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Deezer.app"

  zap trash: [
    "~/Library/Application Support/Caches/deezer-desktop-updater",
    "~/Library/Application Support/Deezer",
    "~/Library/Application Support/deezer-desktop",
    "~/Library/Caches/com.deezer.deezer*",
    "~/Library/Logs/Deezer",
    "~/Library/Logs/deezer-desktop",
    "~/Library/Preferences/ByHost/com.deezer.*",
    "~/Library/Preferences/com.deezer.deezer-desktop.plist",
    "~/Library/Saved Application State/com.deezer.deezer-desktop.savedState",
  ]
end
