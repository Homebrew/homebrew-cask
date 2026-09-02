cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.130"
  sha256 arm:   "48065ca4b4ac3921a0c6db821fa29b97c4ee4c137bc5e3d18ccea32c7baef45d",
         intel: "281e4ac1c3c09851b708e7668e1eca9890536fec9725029b2d87a199a934eaea"

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
