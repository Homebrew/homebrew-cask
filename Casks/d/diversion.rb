cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.667"
  sha256 arm:   "b4117881d46059c51cd9e148e4c4a343caa0857685ed50cd5c17d76ee5b4be81",
         intel: "35a80a90e9c53862bbcb24c82df18a745fa4c7155028d464f1472ba4adeb81a7"

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
