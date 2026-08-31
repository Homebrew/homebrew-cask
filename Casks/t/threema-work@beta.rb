cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta64"
  sha256 arm:   "88234ba15323b8d43eaa8ebd6d973f22c253d2c5a99710827f7a7fc33b49c349",
         intel: "a01f8df95b5250c237fd7cad93b807dfe7bd3453884eaca909e4e64ff6268364"

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
