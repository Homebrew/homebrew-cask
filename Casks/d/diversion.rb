cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.95"
  sha256 arm:   "1ed64ae7f811af40e815f5759d186f5eeefdc4de918c1e58a7088dfd5025f140",
         intel: "bd85f9f507b20c0da38fde04fb3b475eebeb39ff0d019f9807a9b0cd2414bb44"

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
