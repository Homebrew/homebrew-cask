cask "pulse" do
  version "0.1.28"
  sha256 "a03a79b5a74ed954c9ab302fc9dcef02f3658375f49ce8f675ccb740c1169d22"

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
