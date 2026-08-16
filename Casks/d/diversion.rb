cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1120"
  sha256 arm:   "2eb52cdaed86495e89249dd2f10b40d29675c77ff9bd2c8ac62558ec3e46af72",
         intel: "fef457e5dc1d161c60963fe435b4cc5616a93bf7a5072b7dfe6bde1a32fac048"

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
