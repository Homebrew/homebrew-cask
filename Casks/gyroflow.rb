cask "gyroflow" do
  version "1.2.0"
  sha256 "a1b516ca0f125ff7ac027f4564ac75eaec0a52b5673dd408c3e4d4334440a1ec"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg",
      verified: "github.com/gyroflow/gyroflow/"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  depends_on macos: ">= :mojave"

  app "Gyroflow.app"

  zap trash: "~/Library/Caches/Gyroflow/"
end
