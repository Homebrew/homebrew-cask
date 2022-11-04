cask "mixin" do
  version "0.37.8"
  sha256 "bf264864ce40d306e1b05b027bec26a40da15762231061b2541ad3c194861f6e"

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
