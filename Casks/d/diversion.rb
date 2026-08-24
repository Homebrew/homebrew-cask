cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.2"
  sha256 arm:   "6c8d77d2e10f9f81ef84bdbc99d317ea503501235adf4164b4fcfe1f0c708974",
         intel: "b08dcd33ece972f448c973c90e39f78e64c23f819bf497f4aa5fefd206d6eba2"

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
