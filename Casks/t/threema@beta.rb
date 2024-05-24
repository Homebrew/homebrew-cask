cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta33"
  sha256 arm:   "89d3c013bf3589682ef40a1ce4fbaa1a1df4954fcfdd1c49af039eac34c9044e",
         intel: "a1c0cc00106f74db099defc5e6cfb059c9526a88fe700b403534fd7331506125"

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
