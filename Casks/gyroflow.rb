cask "gyroflow" do
  version "1.4.2"
  sha256 "37c225403898599aa0e01da8b8f4f19a44f5614d0d462f49522e4569cef0ab83"

  url "https://github.com/gyroflow/gyroflow/releases/download/v#{version}/Gyroflow-mac-universal.dmg",
      verified: "github.com/gyroflow/gyroflow/"
  name "Gyroflow"
  desc "Video stabilization using gyroscope data"
  homepage "https://gyroflow.xyz/"

  depends_on macos: ">= :mojave"

  app "Gyroflow.app"

  zap trash: "~/Library/Caches/Gyroflow/"
end
