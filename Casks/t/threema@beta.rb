cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta44"
  sha256 arm:   "2759c6e2e8ba896bc844f1b619e7bf5a590a057104443c8675eaf771aed15ef8",
         intel: "66bde64cc7cca5acdae3e36a9c7bc0e4fe8866bb169ed6d76f4fc88cc1cc780b"

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
