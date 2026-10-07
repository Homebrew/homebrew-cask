cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.368"
  sha256 arm:   "ebfba53b5d0af0010a0e15179e34e19ecfc6644fe962b68efebbdbc0183bdf16",
         intel: "116c83ff6d09edd5792cb1603f0db04d3a3194f5a233c7b5d91914c2c14d6ba1"

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
