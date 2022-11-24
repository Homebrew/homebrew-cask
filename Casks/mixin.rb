cask "mixin" do
  version "0.37.9"
  sha256 "c1697cccedda7bdd091d1bd6b72646e9f1201278c69a33bb41982c89da721220"

  url "https://github.com/MixinNetwork/flutter-app/releases/download/v#{version}/mixin_#{version}.dmg"
  name "Mixin Messenger Desktop"
  desc "Cryptocurrency wallet"
  homepage "https://github.com/MixinNetwork/flutter-app"

  auto_updates true

  app "Mixin.app"

  zap trash: [
    "~/Library/Application Scripts/one.mixin.messenger.desktop",
    "~/Library/Application Support/one.mixin.messenger.desktop",
    "~/Library/Containers/one.mixin.messenger.desktop",
    "~/Library/Saved Application State/one.mixin.messenger.desktop.savedState",
  ]
end
