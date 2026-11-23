cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1386"
  sha256 arm:   "b25fb7ee171e416ff71313bbd104b32102674dceca1920edcdb8f774b5bab356",
         intel: "701a40f6b15429f0fdf45d5a779c55718ac24a00fb8ea7af93e45f8b567cabe6"

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
