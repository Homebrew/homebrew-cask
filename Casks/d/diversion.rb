cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.514"
  sha256 arm:   "c6572b1a7655621987b2c86e2ad5a0efc885ab22ddfe4bd52caa4d4d72c92a1f",
         intel: "5ece320cba9771e8435a43e773d0b682a368d1607a0e6bead0287745ccde0724"

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
