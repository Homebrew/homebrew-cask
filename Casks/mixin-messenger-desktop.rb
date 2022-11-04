cask "mixin-messenger-desktop" do
  version "0.37.8"
  sha256 "bf264864ce40d306e1b05b027bec26a40da15762231061b2541ad3c194861f6e"

  url "https://github.com/MixinNetwork/flutter-app/releases/download/v#{version}/mixin_#{version}.dmg",
      verified: "github.com/MixinNetwork/flutter-app/releases/download/"
  name "Mixin Messenger Desktop"
  name "Mixin"
  desc "💻 Mixin Messenger desktop app for macOS, iPadOS, Linux, and Windows powered by Flutter/Dart."
  homepage "https://github.com/MixinNetwork/flutter-app"

  auto_updates true

  app "Mixin.app"
end
