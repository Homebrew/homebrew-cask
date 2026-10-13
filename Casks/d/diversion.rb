cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.510"
  sha256 arm:   "3adb8bd24d1e87f21912f3cfb85c9a4db002342fbeda79614fd219da79f5a4ff",
         intel: "5221aa6facea4d0a25f6f112c88dfcf293a26b8db5ea3b21d733d183e0b87aec"

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
