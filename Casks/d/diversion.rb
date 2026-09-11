cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.117"
  sha256 arm:   "b1b565593b34e2a1395ba021538f121d26e51986aad098e92b2598f9eb8708a3",
         intel: "98015c5999dd2f0ebefd5cb7feb1b99b434718efacc8bd76d41032c787bbb4bc"

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
