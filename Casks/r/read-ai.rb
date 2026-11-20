cask "read-ai" do
  version "1.47.0"
  sha256 "ed0e9c26ab3d67031977dd9baf7b7ece5c58fc16ff08216ba2110440b0166af0"

  url "https://desktop.read.ai/installers/darwin/aarch64/#{version}/Read+AI_#{version}_aarch64.dmg"
  name "Read AI"
  desc "Meeting recorder, transcriber and summariser"
  homepage "https://www.read.ai/desktop"

  livecheck do
    url "https://desktop.read.ai/updates/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Read AI.app"

  uninstall launchctl: "Read AI",
            quit:      "com.readai.desktop"

  zap trash: [
    "~/Library/Application Support/com.readai.desktop",
    "~/Library/Caches/com.readai.desktop",
    "~/Library/LaunchAgents/Read AI.plist",
    "~/Library/Logs/com.readai.desktop",
    "~/Library/Preferences/com.readai.desktop.plist",
    "~/Library/WebKit/com.readai.desktop",
  ]
end
