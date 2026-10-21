cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.685"
  sha256 arm:   "97e4c8951bfdc0c5caef8f1afe157d785ad4a4b1ad6a8ef55434ce576e66a9e9",
         intel: "876438559124a7d52dec36684eb984dccbc9ba3b27d53ca7c31d534445051f32"

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
