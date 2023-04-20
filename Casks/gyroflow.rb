cask "gyroflow" do
  version "1.5.0"
  sha256 "4b5901f9b200f59a93270d6d17bb0fd714e7501b4bc0c615cba70238483f4c3c"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg",
      verified: "github.com/gyroflow/gyroflow/"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  depends_on macos: ">= :mojave"

  app "Gyroflow.app"

  zap trash: "~/Library/Caches/Gyroflow/"
end
