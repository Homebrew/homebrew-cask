cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta63"
  sha256 arm:   "b58b6ce1b2bdf400b04548ba910433706c7fe17e79e14f7117b10f32bd4c2a80",
         intel: "45ee3ab5f0782ddd1435bd7a6203a9e771c30fd1dbec5ced5dea0e8e1ac49b99"

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
