cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta65"
  sha256 arm:   "04a02ffdc3eeec038aca8d52c6ce2dbd84ea9df8b92745e62033ecaa8b1f0504",
         intel: "670426ca6dbc497328849421e107f39179b72ff58e3b629c3ea25cc3e417a776"

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
