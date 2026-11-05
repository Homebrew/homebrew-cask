cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1010"
  sha256 arm:   "e72fdb85ae007290d4627ffcac2896babbcc343cdb3f27f973dc2cbcf8f1c40b",
         intel: "c2e2b91260b689e1bce274934d94321f88646189298b110117bdcc53e9b2495c"

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
