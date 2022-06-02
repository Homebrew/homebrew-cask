cask "android-messages" do
  version "5.3.4"
  sha256 "f1259938832ed6bfcd3fabce185b8d20f932300e4489e4a0da96bf5671b5a522"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/AndroidMessages-v#{version}-mac-universal.dmg"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  app "AndroidMessages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
