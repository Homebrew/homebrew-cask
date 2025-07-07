cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta52"
  sha256 arm:   "27d05f898aa9bd474008fe5e2ca3a106c29844bf9b4f9e0b7e82baa2b49065d2",
         intel: "e0e41226d4b9142073660f90b63d7706905f552cce6cb6026af4af8a44d2b86a"

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
