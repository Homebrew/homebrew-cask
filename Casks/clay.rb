cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.7"

  if Hardware::CPU.intel?
    sha256 "ac5a78c8cc6102c72cb337e19da69ab02382d913180debf1a56fbf8ab9744944"
  else
    sha256 "8a6de66302805908839841b91ee77f831ad9472c26a6c95b64c0053fc6641096"
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
