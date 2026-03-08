cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta60"
  sha256 arm:   "2ad0d0a728c5d88029bc79d5011b765e3ce854d32c2057e31c297825e31aa1ff",
         intel: "5eca9d760708f3e079deb0bd40248d3a6a27811ae371d4ff1601d44eedcd64a8"

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
