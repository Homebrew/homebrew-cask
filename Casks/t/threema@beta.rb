cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta54"
  sha256 arm:   "49949f22082284d38446fed46c3dd70a47bb74f4497dbb6832dac0363e308e2f",
         intel: "f408a2ac446d7381e8dc369bae751fc68cb3ded211690d8004992b2485438cf3"

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
