cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.96"
  sha256 arm:   "e65878417f4c7014ffcf40961724c7c8dee2021dedc74c936fe55ecb8778df2a",
         intel: "1887ee38855d55ca3dcefa11fcecb2ee3d1094240097bff0c97bbc47fb0cc1fe"

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
