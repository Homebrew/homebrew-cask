cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta34"
  sha256 arm:   "795bcf0a8d2cea72b5f0481d4aa7a0ab570fc15df713fabd8068715232d8db88",
         intel: "64c0c1fa66d414b8c77d60796859a1a119a1b2f481519e9a7fa90f34769b677e"

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
