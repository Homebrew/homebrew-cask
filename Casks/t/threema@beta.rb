cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta53"
  sha256 arm:   "90dfc600933e6ba2c67817b36ea33ac51ee9f3556e1481f07642051d3549b17b",
         intel: "52713a7c5d54971e5a7d3ce0fc81eff51ebb74580392c328e6a5aa1981bb6f38"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://releases.threema.ch/desktop/latest-version-consumer-macos.json"
    strategy :json do |json|
      json.dig("latestVersion", "version")
    end
  end

  depends_on macos: ">= :catalina"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
