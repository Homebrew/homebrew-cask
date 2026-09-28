cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.259"
  sha256 arm:   "77b54dfb139b50791b21126970968bcaf3890e69b8be61fe69b0382c5819d700",
         intel: "b69173a9b28daf3619390459398cacf30cdde8a6b2aa2c466bc5749c3cc64392"

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
