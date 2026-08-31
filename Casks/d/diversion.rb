cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.93"
  sha256 arm:   "884d34464641bd01dbafb8cd44d7d80ea7cb5f716aad646442c8fe27cc59e891",
         intel: "d79e534599d12217c98a0b98377fc8f921a7fd2f22042688e61fabd9658ac596"

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
