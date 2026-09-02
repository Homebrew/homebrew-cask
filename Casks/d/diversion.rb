cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.110"
  sha256 arm:   "0b18d6e6186264bab5e7989b8c64ad0b3b97bd235ecf545e9bb3fe7a9d69ce8a",
         intel: "6d1caec877a5b619a84135f3850dd8dfb928301f807b43f625d9035c59e10040"

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
