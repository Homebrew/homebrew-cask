cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1023"
  sha256 arm:   "bb687dda068fd69ffcf7068de6bf50275fd84000e938d8d5c3c1a6ada46053fd",
         intel: "63268aa057e1e9d1662cc1c8f1da79f80922a9e6fdae87a3a2cb84f66b5ae0ef"

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
