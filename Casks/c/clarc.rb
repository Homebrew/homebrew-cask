cask "clarc" do
  version "1.4.0"
  sha256 "e44c0900cb3d221b9aec55eebf820726bd3e36a5e9dcfcf2e7075fb625b2cab0"

  url "https://github.com/ttnear/Clarc/releases/download/v#{version}/Clarc-#{version}.zip"
  name "Clarc"
  desc "Desktop client for Claude Code"
  homepage "https://github.com/ttnear/Clarc"

  auto_updates true
  depends_on macos: :sequoia

  app "Clarc.app"

  uninstall quit: "com.idealapp.Clarc"

  zap trash: [
        "~/Library/Caches/com.idealapp.Clarc",
        "~/Library/HTTPStorages/com.idealapp.Clarc",
        "~/Library/Preferences/com.idealapp.Clarc.plist",
        "~/Library/WebKit/com.idealapp.Clarc",
      ],
      rmdir: "~/Library/Application Support/Clarc"
end
