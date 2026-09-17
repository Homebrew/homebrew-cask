cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.177"
  sha256 arm:   "52ecfe770a1188f93db2581958f98bf6ffe1e6e05a0623450b7ff6ec94928398",
         intel: "286346505169d395ad216e729336c40d46054c89380898cb869d05c420cce0df"

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
