cask "mixin" do
  version "0.40.1"
  sha256 "fb98c251f8d57ecad51952f67db4abb1e47738aa7df9902803e402c86e4343e8"

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
