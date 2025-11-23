cask "stillcolor" do
  version "1.1"
  sha256 "dfa8c046540764df4bc462479190aafc60ecc6b25d43c54feeab65b2c29ee0f6"

  url "https://github.com/aiaf/Stillcolor/releases/download/v#{version}/Stillcolor-v#{version}.zip"
  name "Stillcolor"
  desc "Tool to disable temporal dithering on Apple Silicon Macs"
  homepage "https://github.com/aiaf/Stillcolor"

  depends_on macos: ">= :ventura"

  app "Stillcolor.app"

  zap trash: [
    "~/Library/Application Scripts/com.makkuk.Stillcolor",
    "~/Library/Containers/com.makkuk.Stillcolor",
  ]
end
