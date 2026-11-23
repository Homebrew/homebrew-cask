cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1395"
  sha256 arm:   "8f34e616221f2771b971fefb4eca7386e587cc76fc2ea2556e7b360c04b9c3cf",
         intel: "615f9a6b97dacc3d27987ad889ce0f7d7434683ceee656c81d7e7352ce08096b"

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
