cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.758"
  sha256 arm:   "425ea3f5f5a2e87e3fc054a72ded61135602d6a78b52ab4e1731d202c8c2a632",
         intel: "669daf2a51b1bcb745b281cb304a0716073cad60a0ccc9e99ac2c78b245ee2cc"

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
