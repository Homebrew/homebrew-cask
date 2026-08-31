cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.84"
  sha256 arm:   "4a8ca41e240be363a014b2e182a0a94f08c9b9e1a94d4919187ec05b59bcbd7e",
         intel: "9faa9e96c7aec61e5cffa358ed46af0eabdcc0ee1fa50af107ae2af647628951"

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
