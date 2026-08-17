cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1146"
  sha256 arm:   "1b54771fcf9631c301d1f1cdc496d958d38fcb1108a579cd8108e357bcea9de9",
         intel: "bb28ddf7c57b41f980fa5658651cf731419a6ed7ad87646be4520b304298885e"

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

  depends_on macos: :big_sur

  binary "darwin-#{arch}", target: "dv"

  uninstall launchctl: "diversion.dv.agent"

  zap trash: [
    "~/.diversion",
    "~/Library/Caches/diversion",
    "~/Library/LaunchAgents/diversion.dv.agent.plist",
  ]
end
