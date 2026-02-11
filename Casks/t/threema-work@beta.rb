cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta59"
  sha256 arm:   "2ef3a5f819d42da8ccd91b03e6b5e19d4ce3281c30e3e4226e96ff25086afa1c",
         intel: "812e4ebb692fad501501d68d2bc1e82b0301d15c3031c30b08769bcaf94e40c4"

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

  depends_on macos: ">= :monterey"

  app "Threema Work Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-work-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-work-desktop.savedState",
  ]
end
