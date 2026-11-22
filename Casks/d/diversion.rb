cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1347"
  sha256 arm:   "72bae82b3c3c404d8854ae115310f95103696ca5d6a05b2fdeaf145fa64550fa",
         intel: "c031f016c5acbee1377c43536c9bbaf212332fa4a75ed92a9d03468ffc60871c"

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
