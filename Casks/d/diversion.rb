cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.416"
  sha256 arm:   "e7e271f1bfef89a19ebff4171645626609500488fa46e140084800a179af9924",
         intel: "9a22755867e5af7d4efa2140e04efa1323d7ff30769c790f033d32c3cd29efaa"

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
