cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta43"
  sha256 arm:   "a5efc83785777a543d19445b25b4a257791cbb8016317a5306b61ba7cd39c026",
         intel: "ea9c75692c09afd6bd38c40f4376fcff4460753b0443ddc87f45be69496ef211"

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
