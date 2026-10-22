cask "diversion" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.726"
  sha256 arm:   "2adc5863d657d0d0fbc2d5a7120ddf3930dc42821119ca9d777f8b2f18a52e32",
         intel: "267edef22221b53ab680a39a786a98391751584e7178b5a3d511a6ce98ecee3b"

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
