cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1087"
  sha256 arm:   "750bc9f0b5567bab99122e50c6f087bfe80df12c15924de6f523739d482e6956",
         intel: "1d09c7ac5ab88e8d54bc34189522f0e6600c2a2745b5630f64aa78871767004f"

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
