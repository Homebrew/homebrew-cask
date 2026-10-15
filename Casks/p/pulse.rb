cask "pulse" do
  version "0.1.15"
  sha256 "5a1a8699dc305cab277dd618ed633d19d5149ccfdf42cec1ec67f890dd08547f"

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

  zap trash: "~/Library/Application Support/Pulse"
end
