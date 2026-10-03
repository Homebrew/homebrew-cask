cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.288"
  sha256 arm:   "100aea7a3649dfc4f736f71a21dcb7a995067572fab4163e8525088b000fe82b",
         intel: "97d703b8b780a7640a61f43956405079a99b4e98b58269bcf866298531d602d5"

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
