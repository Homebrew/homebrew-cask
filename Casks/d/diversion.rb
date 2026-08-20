cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1197"
  sha256 arm:   "517981255b788abb53c21859c226a089724b18b20485beb92d1c6ab268996bcb",
         intel: "5622e6cf48337df8aeed5342c2542f62f39bbab5d90dcc23ff8f283ef5f8451e"

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
