cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1426"
  sha256 arm:   "0e989d190cd779b5ddbed577e885124a74294b073616bdc15c6b7f2ec5a7df77",
         intel: "78f5a3a24fe63e5c83646076d64dbf46064f519a2a2b30ad5662c755a29defdc"

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
