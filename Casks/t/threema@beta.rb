cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta51"
  sha256 arm:   "63c85a23ebacba5849f78dc8c028a0f357edfbf06cd0de78194cec84385e0a62",
         intel: "1d191de557061ff7b77f3fb49237b0afa3e4f35d7ec341a308b086f33fa60806"

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
