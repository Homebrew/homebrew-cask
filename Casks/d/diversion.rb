cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.242"
  sha256 arm:   "c37c42520d5ee3f0364b6ceea3ea945dceb09bdc16c67ff6e67f0691dcd1f902",
         intel: "d810ce955bb60b22893f710d9d4e9c3b9b7fa197c9520556612e765be5af5a96"

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
