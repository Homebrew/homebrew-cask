cask "pulse" do
  version "0.1.31"
  sha256 "b78adba792babfa8f5efc227a1f97b042276e9c530fbf0f13b08996a520e609d"

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
