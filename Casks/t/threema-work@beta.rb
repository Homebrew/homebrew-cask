cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta65"
  sha256 arm:   "8f22167636e008aebcd3d137c0c1cbacabbe9ff2dc695e8ed0f8c2c0a217a788",
         intel: "a1960113a460057ccfd4a487ca7e8e814a719cac9c663162cb4fcfa0c536a1f4"

  url "https://releases.threema.ch/desktop/#{version}/threema-work-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema Work"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/en/download/threema-work/desktop-beta"

  livecheck do
    url "https://releases.threema.ch/desktop/latest-version-work-macos.json"
    strategy :json do |json|
      json.dig("latestVersion", "version")
    end
  end

  depends_on macos: :monterey

  app "Threema Work Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-work-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-work-desktop.savedState",
  ]
end
