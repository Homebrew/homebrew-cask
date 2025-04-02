cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta49"
  sha256 arm:   "52574908b6c23826d4cf1da8fdf4cfd1f22c171c747c9af039b3c1dbd4f682eb",
         intel: "6967e60d65ee13e62a562f900d73991aed2b8c1b316cdc1f6f75089fbd73cc4e"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://threema.ch/en/download-md"
    regex(/href=.*?threema[._-]desktop[._-]v?(\d+(?:(?:[.-]|(beta))+\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
