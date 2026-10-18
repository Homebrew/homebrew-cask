cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.568"
  sha256 arm:   "83239872ce7b20fee57ed2aaf6bf820f532b950affec407637d38e84b4e25f01",
         intel: "0197c19a9a881718b40a65b60f2c81e7ee31405d58604674d96c57129179a0f7"

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
