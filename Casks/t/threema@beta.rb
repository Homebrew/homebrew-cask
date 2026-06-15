cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta62"
  sha256 arm:   "37044054a269c94c17e1917a7147622380f23f3abb441e2591ccc0ab9681574f",
         intel: "25d8d89eff1add241e9ef696da39794b894e3a85ed84a1d036a88a8e1e1ab575"

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
