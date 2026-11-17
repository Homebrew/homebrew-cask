cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1242"
  sha256 arm:   "9b7e56b30000efee17be702ea2597994c783e1748261c8f8b5c1e30f670162c8",
         intel: "70733dd5d3af9f23d7c358ada4e2f707b08c3fe6882ecee3eaeab5254231fe4d"

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
