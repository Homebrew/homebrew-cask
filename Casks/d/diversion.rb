cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.1"
  sha256 arm:   "7af1dd996a943f75ac95849abf4b1d8cd6ccf85734c67120b325fd0ec9df3e16",
         intel: "67a753842623c9119b7f179a3246e4c89b49f93c8f7178688da84e8770685e49"

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
