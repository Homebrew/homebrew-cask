cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.173"
  sha256 arm:   "c77684fdaaeef9f30586ebc1f9dbd0fe9e19e4e7c7f67e4be7df589f8de71234",
         intel: "bf786885ed34107ae7865370d000abbc080c7d40dfaa31d99fbde01bb8523055"

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
