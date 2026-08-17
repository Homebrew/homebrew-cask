cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1154"
  sha256 arm:   "a063ec2012fb4e50ec923892c47e710c1435fd6572cec6011ae2c086f777aaa0",
         intel: "d346ef71f22c0b44f94a9b9b10b2a20cdc27df8751cf7c91184c8e50148a0ac4"

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
