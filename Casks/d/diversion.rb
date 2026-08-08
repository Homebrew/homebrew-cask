cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1017"
  sha256 arm:   "80205f3479fb1a7a9c812f6117dd41df43f0caa9868201ee28158322a7b14404",
         intel: "d0440b94ea6c380090ced4fdf4146992d237debd63aee320011905e361fcef71"

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
