cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.52"
  sha256 arm:   "e0de82afcd72f581929057d25b735e1d14277673f5ac7b11ccb335540f4a7db4",
         intel: "5e8b5a7885f065e4ee540bce0fcef3f7db92e0080c5d3b4d5b40ea8d149bcfe1"

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
