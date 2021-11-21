cask "android-messages" do
  version "5.2.1"
  sha256 "be0c271d478a15113af04f33349dd399bdd8b864e870b48ee7a82c42c5ced0d4"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/AndroidMessages-v#{version}-mac-universal.dmg"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  app "AndroidMessages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
