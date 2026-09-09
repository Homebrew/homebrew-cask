cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.70"
  sha256 arm:   "98b3d080f8774994062299f01b19c9d605072dcbd49db719893d787148b472e9",
         intel: "4a98f39e34c926ba42bd0573a4e846fcf36138d5ac8bd73c4162fdd36d9f9daa"

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
