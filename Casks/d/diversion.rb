cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.795"
  sha256 arm:   "b227b6fa690014281acd1cb32f31e086ad90763646d8e3dd49d7000a6430f7b1",
         intel: "1bb1008d5a0ffde121c202439d5343af15c4b85955b618f9dfebfd6d3b632254"

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
