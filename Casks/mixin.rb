cask "mixin" do
  version "0.38.0"
  sha256 "654632c45ca14414307f2e01be9dad131dc924ee6d1d442e5efd5605659df65d"

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
