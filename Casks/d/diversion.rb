cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.229"
  sha256 arm:   "e72a8b35281cb2b1ace935dcec3825a71fa24f36df096a464e253db945d7bf53",
         intel: "b476ece524cb3ef79b5722694acd6f93d3dfc696b81f0a188c5d851b20efd261"

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
