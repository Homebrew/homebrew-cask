cask "pulse" do
  version "0.1.27"
  sha256 "b2411ece3b9d55572a63747b474298f3719561d7534e0b03b8e48a82d4ba5d50"

  url "https://github.com/egoist/pulse-feedback/releases/download/v#{version}/Pulse.#{version}.arm64.dmg"
  name "Pulse"
  desc "System activity monitor for CPU, memory, GPU, disk and network"
  homepage "https://pulse.egoist.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
