cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.201"
  sha256 arm:   "e83698a1c5a9da76372d68074e26dd6984e4b89fb2592594cf2b5b101e2efc7c",
         intel: "4af7ae1dfaa40164a316daf37ddc7231dc76f6cfd9cf5425dfdde9db63c71a9d"

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
