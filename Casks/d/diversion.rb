cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1229"
  sha256 arm:   "654134ddfb48474377ac8745b07c12806d47a6fa74ffea400d93a39f0ce952c9",
         intel: "b3bf65108742cdf5e2200c661a2fe6e7ab3705d43b1afc6ad2c8c2aa45d9eb57"

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
