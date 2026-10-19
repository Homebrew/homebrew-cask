cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.595"
  sha256 arm:   "ee3bf94f14f871addd15b53f4d34cf377f9490ef1b271526ef9c56bdc1fbbf4d",
         intel: "62b7942bc93fd141a700a7cc864c23563d838df5f21b16b93f18b19e3e422419"

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
