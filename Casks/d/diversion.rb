cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.73"
  sha256 arm:   "8f25b3315a5838358bcae22c62e524ddb95ce5067d87a86df679bc54b5674c85",
         intel: "381688c71fb7281944c0fbeee7e43173ad5d541c62386a2718d7ded0b59d1b60"

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
