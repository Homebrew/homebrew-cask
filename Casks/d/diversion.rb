cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1265"
  sha256 arm:   "6e49919327d76262f56ab264e31ba072c1c27b8eb6551c65f1b86380cb0fdd77",
         intel: "6bb3b0a43a5e52d41d2482c00fa6f9b463fd9be3a4425cd45083ad4c57245556"

  url "https://get.diversion.dev/update/dv/v#{version}/darwin-#{arch}.gz"
  name "Diversion CLI"
  desc "Cloud-native version control CLI and agent"
  homepage "https://www.diversion.dev/"

  livecheck do
    url "https://get.diversion.dev/update/dv/darwin-arm64.json"
    strategy :json do |json|
      json["Version"]&.sub(/^v/, "")
    end
  end

  depends_on :macos

  binary "darwin-#{arch}", target: "dv"

  uninstall launchctl: "diversion.dv.agent"

  zap trash: [
    "~/.diversion",
    "~/Library/Caches/diversion",
    "~/Library/LaunchAgents/diversion.dv.agent.plist",
  ]
end
