cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.983"
  sha256 arm:   "15718dfe3f69be616588931db8ce80d97027b64547c7616ad3c26ab834909fc7",
         intel: "ade5e115383bdd6d9e2d1f8019281ed3563add712a2b3e2c80a6bef5c56c9336"

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
