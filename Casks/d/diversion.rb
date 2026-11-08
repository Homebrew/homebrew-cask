cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1048"
  sha256 arm:   "570948fddcf17d224bb89c0abb955ea0b078d10edcc0ef8df94ebdf52b557358",
         intel: "cde901abc470f2abef6c5d429f17787bec66ead6c3ac8f55b6e145fad09b846b"

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
