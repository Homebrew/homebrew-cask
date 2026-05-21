cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta61"
  sha256 arm:   "e4c49a465c370d82506c343a5c8a8455ea5b980652ff58969c2dfb30a57208c5",
         intel: "6d133304713cbde9cd64ded8c1b752c20a9759db4e9c79f0b6ad1c03ca5b9180"

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

  depends_on macos: :monterey

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
