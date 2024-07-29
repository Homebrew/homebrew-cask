cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta39"
  sha256 arm:   "78e3a0a28e1e5fec99d9632e3686e256a09f8c15edeed235f8f7e832cb96ddc7",
         intel: "f26f892508580042e80e75575e8d75d88ebf8682fb0eb7294c021038e4ee2984"

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
