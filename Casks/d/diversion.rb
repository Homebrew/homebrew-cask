cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1047"
  sha256 arm:   "7d09fece760cb8dd4cef441badb433e133b39202145a943c1bbcc44e650e14b4",
         intel: "fa05e74e66d908b1b3e40b808bc4735f0d6af7b04f79a8d78836e91d745efef1"

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
