cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1129"
  sha256 arm:   "54f3638d6416efb93c1d2d2dd86553a86fa67cc088de73287ede3871552e71f4",
         intel: "8ededf0d6585b6b40616315f7ef1896d32a864370bee4b1d67798f0330968f24"

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
