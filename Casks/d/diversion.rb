cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.49"
  sha256 arm:   "f58e4418b6c35ddca8effcb7bf8ed35385a1f0f4e1f4926a4d94009688dc4bb6",
         intel: "c568873ed1b11f74351efbae546e230a7717471f8a1b7110c72b788f1972795e"

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
