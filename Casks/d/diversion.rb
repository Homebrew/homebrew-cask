cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.494"
  sha256 arm:   "6cd2d34c67e5252faeebfc2b74bc3fd8aa9bdaad9d2f2fb41c12cea6ded2e5c8",
         intel: "0d73a44c588125109131d6b4d10958b6af198271fd9ecebbbccd0a9af9bfd3a5"

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
