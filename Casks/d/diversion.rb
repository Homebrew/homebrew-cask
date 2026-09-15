cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.132"
  sha256 arm:   "15f13720df7c5785c34abf5d2a2e776c43caafecbb00dd1e9017c5cce214e753",
         intel: "f8fc7d9518ea25b438640aa3f53343523e01d884f57235743f53ebaa3159d577"

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
