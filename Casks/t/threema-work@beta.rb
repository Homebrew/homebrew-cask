cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta67"
  sha256 arm:   "d2c2ca8ff07794a1d1d27663a759d4e841c2ae21258db338fdfe57769c203dd3",
         intel: "9e78967165bea37f41013099c896aaa33cdeef28412a7966cd9406612dc9739c"

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
