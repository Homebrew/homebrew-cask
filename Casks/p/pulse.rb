cask "pulse" do
  version "0.1.30"
  sha256 "3ed21505e7baeb81664f1004dcafbec737656b75975c462912e4c2c8d41f07f3"

  url "https://github.com/egoist/pulse-feedback/releases/download/v#{version}/Pulse.#{version}.arm64.dmg"
  name "Pulse"
  desc "System activity monitor for CPU, memory, GPU, disk and network"
  homepage "https://pulse.egoist.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Pulse.app"

  uninstall quit: "com.egoist.pulse"

  zap trash: [
    "~/Library/Application Support/Pulse",
    "~/Library/Preferences/com.egoist.pulse.plist",
  ]
end
