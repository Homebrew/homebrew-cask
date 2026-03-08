cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta60"
  sha256 arm:   "76c1e50b0435f709b240fbf9a6db37dbcefebaa87904cefcca0c23e6ce824372",
         intel: "6691d5246f9511e65b8a7bc7515493016730f164d349da7489a9249098d41637"

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
