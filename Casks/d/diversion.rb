cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.454"
  sha256 arm:   "f16ae59379bd656f7ad0dc0b655b5670b3f4f50d76670e86784ab196d24c1eab",
         intel: "70252ad0f875a3521e58ac39fd65e33df8c69e9f4f4f575c93e4e272c92cc0e9"

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
