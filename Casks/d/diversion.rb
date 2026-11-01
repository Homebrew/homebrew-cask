cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.889"
  sha256 arm:   "3bb8ceca9f8079f8888c5a4b4c39f906b5e3691c9e666fa28feba7e82b87ea93",
         intel: "d9bf5cd4fa6eafb68dd65768de02b4554ec06d718ca4d36870514b666791d215"

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
