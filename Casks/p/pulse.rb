cask "pulse" do
  version "0.1.29"
  sha256 "e4857574c703e825ba288ed7747827849fe7ffc8625ef29641cea50f699d26c3"

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
