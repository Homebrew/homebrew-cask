cask "orangedrangon-android-messages" do
  version "6.0.2"
  sha256 "ea831fae7bd4a4f4d9d323d2423035d07fcfd8909426663c575c41adc039f7c2"

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
