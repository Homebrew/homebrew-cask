cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1300"
  sha256 arm:   "6203345f977e62b777bc4a85e3fada802a49a70b99d6d101eaab7bab2c4e9c95",
         intel: "7c982f085a4c92013da5e65d9d1e17997b982b536aa47292a717253b1a4c7b0c"

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
