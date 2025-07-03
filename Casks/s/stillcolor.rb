cask "stillcolor" do
  # Update these on new version releases
  version "1.1"
  sha256 "dfa8c046540764df4bc462479190aafc60ecc6b25d43c54feeab65b2c29ee0f6"

  url "https://github.com/aiaf/Stillcolor/releases/download/v#{version}/Stillcolor-v#{version}.zip"
  name "Stillcolor"
  desc "Tool to disable temporal dithering on Apple Silicon Macs" # Corrected: Removed "A"
  homepage "https://github.com/aiaf/Stillcolor"

  # Add the macOS dependency here
  depends_on macos: ">= :ventura"

  app "Stillcolor.app"

  zap trash: [
    "~/Library/Application Support/Stillcolor",
    "~/Library/Preferences/com.aiaf.Stillcolor.plist",
  ]
end
