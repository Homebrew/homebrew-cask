cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1228"
  sha256 arm:   "e97ae4152c78b814fa0469261f52b17b6ca93a1482e309536c82d706ab951470",
         intel: "83975bc45ef2f46b32141baca324d9efa405f53b3da398fae2f364618689d392"

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
