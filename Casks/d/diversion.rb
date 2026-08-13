cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1092"
  sha256 arm:   "9c5f9fe30f0117f8ded285c9423fedec525293a4dfb89de5701afa8dc416534e",
         intel: "8e079c0e14a320577e4a698676edebaffd75a0bd3bf2bcb17346667e22962034"

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
