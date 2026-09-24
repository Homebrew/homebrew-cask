cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.238"
  sha256 arm:   "e898efafe84877165b0d29b7dfb0179e74af2a66596d5d265e35bf1816ab1d9b",
         intel: "c202ef194265a9342c87fa365fa3e1c87a1047fb10dab05bfacd715fc1c4ec2a"

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
