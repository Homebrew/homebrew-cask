cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.448"
  sha256 arm:   "71834b157232b2a8cfa5f9bc290aec1c1db7a04031ef8bec42478327fc1a9428",
         intel: "1b60024e07fb35cbc0c804f6f6dcf52672aa8b89c81ff0a8bab4c6f9489417e6"

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
