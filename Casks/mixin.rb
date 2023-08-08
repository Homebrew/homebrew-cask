cask "mixin" do
  version "0.40.2"
  sha256 "06ebfe8f58da10062922331ff455d9f1e241ac1e4cc54feec562bfe397266dfb"

  url "https://github.com/MixinNetwork/flutter-app/releases/download/v#{version}/mixin-#{version}.dmg"
  name "Mixin Messenger Desktop"
  desc "Cryptocurrency wallet"
  homepage "https://github.com/MixinNetwork/flutter-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Mixin.app"

  zap trash: [
    "~/Library/Application Scripts/one.mixin.messenger.desktop",
    "~/Library/Application Support/one.mixin.messenger.desktop",
    "~/Library/Containers/one.mixin.messenger.desktop",
    "~/Library/Saved Application State/one.mixin.messenger.desktop.savedState",
  ]
end
