cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta63"
  sha256 arm:   "c108ef555260a7726d0eaf7000e1081170e95af042a9e840687dbeaec283d045",
         intel: "554139a71952ac8b1103cf97f3dcd77bae68581a86df97dd7386caffcc528775"

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
