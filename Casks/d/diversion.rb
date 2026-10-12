cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.472"
  sha256 arm:   "ab5393e060b914f490039e2945b295f9dd5ab7d7198da40b359f9031bcaaf01c",
         intel: "a32b4bec9475723a7d94adf1a2b41543c66f1e4bd63f9f9fb03c53ababeed1f0"

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
