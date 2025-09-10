cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta55"
  sha256 arm:   "3645a3fb03cf89baa82015eb4b06095cf92119544aad48051f68b6b58c6a88f3",
         intel: "e91a95c9eaebb83b86c774daf80c30d1395671355a429b5579ea009b1412b8ce"

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
