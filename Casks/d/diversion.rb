cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.190"
  sha256 arm:   "4b663ebc1ae13ff4ad53fb379556db2b6ef2dd62a3cb3360abc2b01405964ad8",
         intel: "2cca7c8260dee47c936567d10e6234262152d6f41ca8d1ebd4925c543985b050"

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
