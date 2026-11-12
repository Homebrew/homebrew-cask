cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta67"
  sha256 arm:   "945b24d71468995f60cdd04221d4d3e9f6c2307d780347be414dbcd2651bcbc3",
         intel: "4c261e7e42df9b10ed1a0cc5f5c0d578c51f1156c080e751ec6ddb5dd9f7c46f"

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
