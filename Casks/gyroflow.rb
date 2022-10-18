cask "gyroflow" do
  version "1.3.0"
  sha256 "d0c84ecf6dbdd3d71e6c711e8a4aaf2c9a6e9df4eb339627fbf7cf4e3ba04efc"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg",
      verified: "github.com/gyroflow/gyroflow/"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  depends_on macos: ">= :mojave"

  app "Gyroflow.app"

  zap trash: "~/Library/Caches/Gyroflow/"
end
