cask "orangedrangon-android-messages" do
  version "6.0.1"
  sha256 "5cc5f6b9e232612033ca973cdf6aea3aa3a03b2d7f9d0fa455956013db8ee201"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
