cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.10"

  if Hardware::CPU.intel?
    sha256 "dee948bfb41280437e8b847eae18f4b9fefe9d5ea59d5b560730d8b75647e977"
  else
    sha256 "13464d839b71869d1cfe07ecb97b2bb514e3fddc09543246356a409f414723be"
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
