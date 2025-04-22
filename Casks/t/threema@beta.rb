cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta50"
  sha256 arm:   "ffaf420085c10be0bf91367b79cec1406c7760e32c2b2b53ef16c01fbf31e1bb",
         intel: "9ea7a9e50dabfe03ba4982f977098206b3ff31ac3aa3addf75a9e289cfe0b1c0"

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
