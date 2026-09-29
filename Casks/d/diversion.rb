cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.268"
  sha256 arm:   "8c8ff773592f88151c983501d2e9661bf0a6d333d85c2f6a603026e4e343f5ca",
         intel: "e656db4d5b30af0fd68b53d7fb9830564b6bdc3a2c25119f9396bd61f36dc394"

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
