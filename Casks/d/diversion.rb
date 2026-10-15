cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.567"
  sha256 arm:   "1263e503aa1ab95fb4e622700cdeeca3d1726c08d08acec8010dd5c16a756362",
         intel: "2e79bbf8795ee561e54278da059d4d7ee13c89837a638a2682514edd4d35d864"

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
