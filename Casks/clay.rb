cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.4"

  if Hardware::CPU.intel?
    sha256 "7e8aabbd7f1f220f21932031cef2619a713e94a620e4bd651e26e6e471b50e21"
  else
    sha256 "3bf0a6475065be82d40fa5b7bbe9a9b9d8aa8dc730d4ec623f045201b06d4e52"
  end

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}#{arch}.dmg"
  name "clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
