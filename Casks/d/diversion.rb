cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.738"
  sha256 arm:   "2def9d6fb5193ba53cc41303be7f0999151e4f6cb9f4a22969f5bf05c117b3c8",
         intel: "6c1a6b0879644b4d59a0d0661e35a5dda6995aa134f7ea83a2f7a825dd0cc559"

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
