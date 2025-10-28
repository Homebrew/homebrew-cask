cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta57"
  sha256 arm:   "5c7440694473d78f17ac06d96eb57700fadfe35eafae170c8f59ad877219cdc6",
         intel: "563d585253fe77c5495396313d4a2f63a8ee71f18f075c4b47f6edf99101490e"

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

  depends_on macos: ">= :monterey"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
