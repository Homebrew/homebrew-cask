cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.943"
  sha256 arm:   "f4f6e292ae30fb585a252734efdda2b388176c759f131e1cd0f2a36d28f1fbcc",
         intel: "5b4ab239f779fa3165b0a4f322453ad103e051a87eeb01a995a3cfd24c047170"

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

  binary "darwin-#{arch}", target: "dv"

  uninstall launchctl: "diversion.dv.agent"

  zap trash: "~/Library/LaunchAgents/diversion.dv.agent.plist"
end
