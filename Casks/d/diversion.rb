cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.953"
  sha256 arm:   "9f7c5c64c40c2cb50b402e9a6b10c0d0ef20acbf1aba3dad40729b4548cdb585",
         intel: "17cdb69b29298032e198a4528c2475b24a3b63681adc4715e8a110f295583b3b"

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
