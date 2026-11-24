cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1400"
  sha256 arm:   "564c5c5dc2e21b0b9456e8d0d81ca7b338d48969ab86cf4dc9e7bf06621a7e59",
         intel: "9f2d03d8e1f523f66bd29268d6f91bb49ea5e92215909d9750deddd4c082802e"

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
