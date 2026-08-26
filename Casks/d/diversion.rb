cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.40"
  sha256 arm:   "9eae19c234171329e48a9f1a7bc24d66e68d37d6be86d5f24d6094d4fc2e039a",
         intel: "e8ed4d72359069d2cb6cbf1b517d9ea440d5b500312ce65c9cc04ebfef2c3344"

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
