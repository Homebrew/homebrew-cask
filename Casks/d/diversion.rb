cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.988"
  sha256 arm:   "196a7371bcfe7a40cdfba4c3c96eb3756f143b8b5025c1a6e7a3ea6c215a01c5",
         intel: "d6c0153b6884d5500cb9af4e1d1b68513f18a077d2c09a68e90a060ece644304"

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
