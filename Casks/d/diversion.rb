cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.974"
  sha256 arm:   "b55eaf9cdc95e02e416432df1eebbdf22521a4f51d9ccccc69e3bb8d983c13d9",
         intel: "3f75aaf3339212783734fd732e713038033579126206566ca5960549a5bd2d13"

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
