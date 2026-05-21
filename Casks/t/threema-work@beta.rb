cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta61"
  sha256 arm:   "92db099b934e6aa1ca2de4dcfd4be8e6adbe94bfa1ca478cdd2afa3191d79ee7",
         intel: "189b8b55a88f44c8ea6819333889d0c144ac7eccf77879905759c0cbdf91faaa"

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
