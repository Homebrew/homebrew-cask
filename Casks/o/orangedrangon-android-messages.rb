cask "orangedrangon-android-messages" do
  version "6.1.0"
  sha256 "379297706fdfb1a1d332970ffe6161fd94f73b9ee230e1f04bb3a18332daf847"

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
