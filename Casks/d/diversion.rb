cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.3"
  sha256 arm:   "3abaf055b7fc0205ff8a7425e4f4ab3d4d9efe65b55ac91b1d73a7212e47454c",
         intel: "aac168691b19aee6c92dd59c2115bb2f022c5260016385ffd138afe798c8500d"

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
