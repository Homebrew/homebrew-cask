cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1469"
  sha256 arm:   "c0e8336997384e004107b9cd9c8ffcb93f4e62a6e1f5f3eba8ed18f1d5acf37c",
         intel: "e57edbf2f9ba551c7241a2aa125333aef3608150817df2940119327d06b5d039"

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
