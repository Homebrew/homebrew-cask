cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta64"
  sha256 arm:   "ce5de46a44be2df188b58cb7091bd3ec10e80f5ec202310c790b16c86bf4f42e",
         intel: "e34f31df9b3cdd48e1d73fc69c7a625c082bbf543302f6403442d661f471033f"

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
