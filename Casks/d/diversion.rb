cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.129"
  sha256 arm:   "6407b4dd2e53cd858f91f0a6a9ea8a84d8e84775f05e8c53cbe76b9e76b51f95",
         intel: "7e834e0f9fa6d39d1c5806ea48d19a3e4af6ebb8b0b9fc36a49350911e1a5d28"

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

  depends_on macos: :big_sur

  binary "darwin-#{arch}", target: "dv"

  uninstall launchctl: "diversion.dv.agent"

  zap trash: [
    "~/.diversion",
    "~/Library/Caches/diversion",
    "~/Library/LaunchAgents/diversion.dv.agent.plist",
  ]
end
