cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.351"
  sha256 arm:   "d9afbd9c7ae9f4b7b3a07544011c9f583fb8fc346e3e0415562bde539c0610de",
         intel: "16a95515a81c0ca18aba22a83319b7e820d114491bea3b51823bf95e716cb189"

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
