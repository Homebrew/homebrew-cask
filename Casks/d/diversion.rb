cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.88"
  sha256 arm:   "652924e260a55bcab8c79a46d878922c753904a5e5004bf294b74b6c402a7be3",
         intel: "52a4a6175275c719d2abb9d86303d3e6891493d64d40de3494312b5c28754d04"

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
