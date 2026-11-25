cask "gyroflow" do
  version "1.7.1"
  sha256 "2e2f3337c6fdda5db34d0f548c77542930fed8b0e1691723684078b62c46b406"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Gyroflow.app"

  zap trash: [
    "~/Library/Application Support/Gyroflow",
    "~/Library/Caches/Gyroflow",
  ]
end
