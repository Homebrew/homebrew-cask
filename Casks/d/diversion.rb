cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.143"
  sha256 arm:   "fb25831a928bdb37cb17c4d1b4e86142595ead4402e4064bda387404fc7b2276",
         intel: "3d14fea9d20a5e1288d70a7175149c18e56ff0a954e1ec51d842c3ae75600288"

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
