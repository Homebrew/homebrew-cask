cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.777"
  sha256 arm:   "b546d2f6e242a01de3d6eb2ac8cd02199d090859718b03a152172c702bc73a1b",
         intel: "27decb7d3713446177be159190301ef862971db325bc8506f22a257f250c94e3"

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
