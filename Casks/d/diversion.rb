cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1031"
  sha256 arm:   "fe00c007c091f3aec9535145a96deec8a19852b13b4fc56a941e786b6d0ef097",
         intel: "1085ed899f8762bc58c6a327076f14c9613eab8d09b3043f8487a8c503a45427"

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
