cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.186"
  sha256 arm:   "73a7b3678d1d0e81a15a2f406ca31a6dea8639646eb703f35ac41ffb4142eda7",
         intel: "9554a7fdec3e5f55ec8408ac504febdad409d583b34c7403f900da36556fc20a"

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
