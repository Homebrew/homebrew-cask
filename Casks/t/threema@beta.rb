cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta68"
  sha256 arm:   "4069f3b5e1f667e8f96a0b254323929ad037be931a22d0c0f0b5e9e50d5d39b4",
         intel: "ec1592f3f113051a7a2376d9e58aedb78c3933a0b9593214dbaad2e3ac0fd781"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ch.threema.threema-desktop.sfl*",
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
