cask "gyroflow" do
  version "1.7.0"
  sha256 "3501f397b4e747e78e98b65aeaa67c10b7ac6d8982ba38c184b1028af74a3798"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  depends_on :macos

  app "Gyroflow.app"

  zap trash: [
    "~/Library/Application Support/Gyroflow",
    "~/Library/Caches/Gyroflow",
  ]
end
