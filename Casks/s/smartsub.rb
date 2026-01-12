cask "smartsub" do
  version "2.10.1"

  on_arm do
    sha256 "d9f68a6e198b7787c62722d8496af205d94f262df0f1009386f20c737fd99445"

    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_arm64.dmg"
  end
  on_intel do
    sha256 "0e36bf378c78e85000b9e696bc5cf8d2d8fceb07d19e208678a5187d0ddc857b"

    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_x64.dmg"
  end

  name "SmartSub"
  desc "Video subtitle conversion, subtitle translation software"
  homepage "https://github.com/buxuku/SmartSub"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SmartSub.app"

  zap trash: [
    "~/Library/Application Support/smartsub",
    "~/Library/Preferences/com.example.smartsub.plist",
    "~/Library/Saved Application State/com.example.smartsub.savedState",
  ]
end
