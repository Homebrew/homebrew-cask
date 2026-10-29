cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.851"
  sha256 arm:   "3dc3a3f98ec3488f9fd453f27d738da70b9c76f759c3ba3100189e47fa076479",
         intel: "9f82b1a30e7f2fa4eb07721b78d3dec592e8dff02b62710333a446d364e336d0"

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
