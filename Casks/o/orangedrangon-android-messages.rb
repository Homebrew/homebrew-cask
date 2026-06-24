cask "orangedrangon-android-messages" do
  version "6.0.3"
  sha256 "9d3f75a6de9948d2cb4274f87b443d69d081935b9341cc0ab2b308b534d3a936"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
