cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1092"
  sha256 arm:   "825d1fd389db60eb4cfcb699e83e0ee4307d6f19939de7fcb1f20f041fa11741",
         intel: "5d2c875a1fb4f4888d8bb2e45361a48d8d3bba41c5e72869f3dce39ebaea4253"

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
