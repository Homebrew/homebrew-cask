cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1043"
  sha256 arm:   "eea808fb6b00cd81e5480ceee58c6194daa5b6b9932ef32c0e17d117039cbf6c",
         intel: "5a9e39c208d1883a15462c8d568446d778292ff23701ed3159f71f9c39b7200d"

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
