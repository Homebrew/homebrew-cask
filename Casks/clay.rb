cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.9"

  if Hardware::CPU.intel?
    sha256 "60b240684871b5de052e9022a62953e462e4956b843ab022213ed69d9659f0b6"
  else
    sha256 "47bd827c3bb6f7505ee63396d2ea88ff21a3c2a38cba5d4a1acb4895f3a02c5b"
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
