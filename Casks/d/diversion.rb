cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.12"
  sha256 arm:   "064ba78292c448ca868c197aaa6532edd0b79a77cd1c53358596796c62e6d868",
         intel: "b3be7deb477f4b2b93bf6bbcf136ec6c1328a6492eb34502ccd43f76e3e0aa17"

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
