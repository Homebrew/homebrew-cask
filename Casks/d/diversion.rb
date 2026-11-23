cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1368"
  sha256 arm:   "ea3aa877cc50ce1b0c8ac91e8340d977e863b97f2d416738b9a4f864be77a01a",
         intel: "52292a693598938ed0256edf8a3c27a0d039135082575717e1a7248f646fee47"

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
