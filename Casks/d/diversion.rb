cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1198"
  sha256 arm:   "d213ad437cff33c51fec2b9d7a8478e6a73f7a109e6d46c4ab70d66f1ccb8bbb",
         intel: "14dbc33531bbc50732932c32fd93bbdf7aaf40b2eafcead669d885cf437e1730"

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
