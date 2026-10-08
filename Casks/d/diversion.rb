cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.386"
  sha256 arm:   "f3ff17e10150256075a241f0bd68f10229a9f5f4cbb1da005fddda329dce4ac2",
         intel: "88601ca15f3e03fdf7dc32af63a28f161c5d8047cdf9a57a32a78ef122656cb5"

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
