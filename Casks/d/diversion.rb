cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.818"
  sha256 arm:   "f9fadb7c989db65edaa6b4ccf3f00468c5b4b29c1ae9a5f843c72ba78f651749",
         intel: "7647f19db57f193e97c6046b6ecefbf0164a68680acfc246ef0537e1a7822b06"

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
