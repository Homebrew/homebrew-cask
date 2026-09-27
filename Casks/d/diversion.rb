cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.250"
  sha256 arm:   "b561a6bf202cd6b9edb539c0240c98dfc541584806d89593e6990ce3458dd50b",
         intel: "13bbd6986aabe402969178c29e222d91e248547a83f65526fc36004f4c9c7ca8"

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
