cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta56"
  sha256 arm:   "db1350b06e4af11c75e90a837279c812ed10a2c10fee080e9d749b8605fe27d9",
         intel: "d46d286043558232ac94f637b8bde96285b217523e344b1d279277bcb8f91976"

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

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
