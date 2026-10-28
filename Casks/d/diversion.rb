cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.826"
  sha256 arm:   "9557cbb71b1ab18c79717f01ed99d3f33a3aaeee46c8b62756d3c9115b811ce8",
         intel: "69dd49f47a0006b7518be6b8a321ca6d3b71216389f8fab3e1602a082ac4d488"

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
