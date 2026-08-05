cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.993"
  sha256 arm:   "dffd80415eee830c0c2c47aca1f1f07c016ee3d2ffdc8181eeae9d2b7be6d059",
         intel: "dcd5a6e1a8dbf0e1202549a5e1b18bac6e2449ba54defcaf80010b3ab25fd8ee"

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
