cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1054"
  sha256 arm:   "2e8452680d3b7f20293a8be3147f0e4b845244148c5e95a5fafb707a75a554e1",
         intel: "14a37113c293cb144d4892fa0a6ddcaf9f1c80f9d2a3a2505d43d92990fcad61"

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
