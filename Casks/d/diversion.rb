cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.641"
  sha256 arm:   "f138987a2b8ef35273219ebf9bcb35459adea6bf206e0c0eea99b2190e8f841d",
         intel: "ab8c86999d73355ad99da1bf767c4f62ac8407645efb8c52f75a2a79be9aa8a6"

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
