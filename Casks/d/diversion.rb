cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1175"
  sha256 arm:   "df170b9622e6867fcb0a7d8bc8f5df6d991c2196274355895a33bab6fdcd9768",
         intel: "122f77ddcc24ca0ae50d86d6fae24e76bf79453536c0f4cea63905147bbfa1f4"

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
