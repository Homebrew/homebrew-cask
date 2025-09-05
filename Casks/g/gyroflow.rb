cask "gyroflow" do
  version "1.6.3"
  sha256 "fbe26793c639f1410d8995debad188721587108cb6a74224e879f79e4bb8a1c0"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg",
      verified: "github.com/gyroflow/gyroflow/"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  depends_on macos: ">= :mojave"

  app "Gyroflow.app"

  zap trash: "~/Library/Caches/Gyroflow"
end
