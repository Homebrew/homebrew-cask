cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.153"
  sha256 arm:   "0ac18be82f65c202ec9f5ac470091495727fc7eff4a77ab91bd985aabbf04582",
         intel: "1f047dbb7dee13fca7ffddf4072a58f0c9b37fb5683cec515c3047baa029c12d"

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
