cask "pulse" do
  version "0.1.12"
  sha256 :no_check

  url "https://pulse.egoist.dev/download?platform=mac"
  name "Pulse"
  desc "System activity monitor for CPU, memory, GPU, disk and network"
  homepage "https://pulse.egoist.dev/"

  livecheck do
    url "https://pulse.egoist.dev/download?platform=mac"
    strategy :header_match do |headers|
      headers["location"][/Pulse\.(\d+(?:\.\d+)+)\.arm64\.dmg/i, 1]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Pulse.app"

  uninstall quit: "com.egoist.pulse"
end
