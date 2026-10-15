cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.546"
  sha256 arm:   "f91018c4ccfbb6e91decc5dbc25bdd22d8dd82a12ec36b3837661d42b47bf5b1",
         intel: "890cf5586c0a426efeb2e24957e2062c27dfbb1ded342ef49dc4e043af5187a4"

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
