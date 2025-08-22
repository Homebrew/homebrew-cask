cask "gyroflow" do
  version "1.6.2"
  sha256 "c0df84a78fa3a1a665419adf2eaf074b5c3a49375f766ac843fe273f5302e958"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg",
      verified: "github.com/gyroflow/gyroflow/"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  depends_on macos: ">= :mojave"

  app "Gyroflow.app"

  zap trash: "~/Library/Caches/Gyroflow"
end
