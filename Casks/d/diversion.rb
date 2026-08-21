cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1224"
  sha256 arm:   "69b983efa57567d481d4f95d4c159fbd53805ea0f3a1ea9f2b9514e35bccd8df",
         intel: "149d6bd0054b1e2fd1f8a5961f8c7ada17b87fccaf1358bc9b7546b3d9c116ed"

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
