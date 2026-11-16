cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1222"
  sha256 arm:   "e0db7d5aae09d1f86f0724fb1a2f8a4b4302b37d9a9866f30fb8c3fa1a67049e",
         intel: "b9812f4531c2bd46e2cb48919e11265f4c6ea69b0b3236805a7d11cb0afef38a"

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
