cask "read-ai" do
  version "1.48.0"
  sha256 "bde5da29a87143b56ed43404b0cffa3a38049407ea7780f9d2af34202895133d"

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
