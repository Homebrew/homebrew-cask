cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1072"
  sha256 arm:   "588faa6ce64ab5d3f29963f53d5ee2b2e0d9f0735db61793e9503c699807a772",
         intel: "bbf458201d8f05af25699f4486b549b5682e0114d6945cde8e701ff86fd804ad"

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
