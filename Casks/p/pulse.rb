cask "pulse" do
  version "0.1.16"
  sha256 "29ca890e5a5113ab6fa756e80575de33aab4ebbb75d93361bb0fe3e8ae143795"

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
