cask "gyroflow" do
  version "1.1.0"
  sha256 "21b0df549a5f2378464c83d1a7b4d55f7040b65e61db5fd37d876665fc666050"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg",
      verified: "github.com/gyroflow/gyroflow/"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  app "Gyroflow.app"
  depends_on macos: ">= :mojave"

  zap trash: "~/Library/Caches/Gyroflow/"
end
