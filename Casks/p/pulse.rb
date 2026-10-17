cask "pulse" do
  version "0.1.25"
  sha256 "897334e767974e4afbdf9bee8cd57bddaf241c9936c3c7e5994ccad3375f0fec"

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
