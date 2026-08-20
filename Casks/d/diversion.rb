cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1207"
  sha256 arm:   "612b2953f565f9eca1c60e87581e8b67bdb247760c2cc07501f3c5fb510015ff",
         intel: "dceb9710bd175a0b3e38b44b32de7ea099dc00794d5ecfffcb3074899652b419"

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
