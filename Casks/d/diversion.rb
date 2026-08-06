cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.995"
  sha256 arm:   "0cdf819f0d386966f82fc1ce27d9b68fb31c54b42347cd180d350a2d03a2063e",
         intel: "fec6b398b9e4d7559d5645aeb7e1c9d4b124e6b4143357a44f1ebca522eb9d32"

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
