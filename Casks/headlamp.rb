cask "headlamp" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.10.1"

  if Hardware::CPU.intel?
    sha256 "a5a124a3915e978f29b9c1050e5d25fcf0d24012552d88e753a3d8a5b0d7e558"
  else
    sha256 "ef7a9ef40ea79c1da865d68a39dca08aa89d3800d035efa13b30973842c9188b"
  end

  url "https://github.com/kinvolk/headlamp/releases/download/v#{version}/Headlamp-#{version}-mac-#{arch}.dmg",
      verified: "github.com/kinvolk/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://kinvolk.github.io/headlamp"

  livecheck do
    url "https://github.com/kinvolk/headlamp.git"
  end

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
