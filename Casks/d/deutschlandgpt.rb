cask "deutschlandgpt" do
  version "0.16.3"
  sha256 "25f6e8b6b43a3d1a727184daac09a0e9fe7c059c9f5c869a8b56e0e6286118e2"

  url "https://dgpt-assets-prod.nbg1.your-objectstorage.com/releases/desktop/macos/deutschlandgpt-desktop-macos-v#{version}.dmg"
  name "DeutschlandGPT"
  desc "Desktop client for the DeutschlandGPT AI assistant"
  homepage "https://www.deutschlandgpt.de/"

  livecheck do
    url "https://www.deutschlandgpt.de/api/desktop/update/darwin/aarch64/0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "DeutschlandGPT.app"

  zap trash: [
        "~/Library/Application Support/de.deutschlandgpt.desktop",
        "~/Library/Caches/de.deutschlandgpt.desktop",
        "~/Library/Logs/de.deutschlandgpt.desktop",
        "~/Library/Preferences/de.deutschlandgpt.desktop.plist",
        "~/Library/WebKit/de.deutschlandgpt.desktop",
      ],
      rmdir: "~/.deutschlandgpt"
end
