cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.280"
  sha256 arm:   "12109965fcb6d524351b2a4ad94b06e6c3fc286447a7ff474293ae8e88d321a1",
         intel: "ca060065f9a7619a2d6314482ff6e68f9a35495cad78247d264cb8d7c31909b0"

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
