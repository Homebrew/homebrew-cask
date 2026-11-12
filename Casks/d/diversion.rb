cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1149"
  sha256 arm:   "825352111efb86d15fafa132ca858b53989d2ebd8e2b81464d5cb9366c32e9be",
         intel: "70dc65cad56d9b5f7af1b865b5b1a65700b81cabaac22a29e40cfb58339f7cda"

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
