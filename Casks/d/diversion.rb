cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1066"
  sha256 arm:   "471a2328881d714f2df8b0ea7cb1924ed379463e9eac2538bd668d24ced59739",
         intel: "3e70e868d7fa499610d4a4d1d4f43f645cdbfd685f57f8e71cbda55bb9899a9d"

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
