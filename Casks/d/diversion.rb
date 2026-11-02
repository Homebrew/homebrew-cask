cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.917"
  sha256 arm:   "aa6993399e3c832587d02354adb8a9a68963151075a01ac7a1414c029a0382cc",
         intel: "0b4ec2bf16106a65776c9235c405b3b46f02976821ec1bace09e4f45c5be7c17"

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
