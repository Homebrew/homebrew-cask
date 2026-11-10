cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1118"
  sha256 arm:   "d84527296e28d47ccba553d38e8ad02d81d501fc3048e2d08b7687287de70244",
         intel: "ea6e226ec42b605011b532d39d7190b5faa1f977830049f99e7b2955cb704406"

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
