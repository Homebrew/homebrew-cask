cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.5"

  if Hardware::CPU.intel?
    sha256 "be50e8e9871eed9a8c91eacae504b31e85751b27559e7099454f4fa09c03f0a1"
  else
    sha256 "6142ab460eddbd299840773868b5c3f098d90e68eaa2ec6d5a0ff0a8a424e79d"
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
