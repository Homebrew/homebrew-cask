cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1326"
  sha256 arm:   "fc3bb87294c67e7280cfcfd9df2479e38196aa2a54a28fdea7709a37b8abf94d",
         intel: "02602fafa2c13301707f81e78aa84207e063da39e336ddcd79cd85e5846ae393"

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
