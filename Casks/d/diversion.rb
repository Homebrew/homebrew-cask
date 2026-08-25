cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.16"
  sha256 arm:   "185c980da5224b29b3c8fe674d1dd3e50fbb8841435b9ab7d0fcd625b87bc63d",
         intel: "7a98b51b1dfa6123529a01f4cc8cc0a3110a6a47e307b9da940710d78c2b50e5"

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
