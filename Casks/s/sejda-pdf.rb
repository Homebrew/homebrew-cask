cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.9.6"
  sha256 arm:   "a80eabee14b4978205f3de21f6469d16ce3d5cf6aa36925cf890cd34a4c8a250",
         intel: "0898f3e419b39f48606abbbcd597593ae7f6600dc020ea641316eb8b394a2ab0"

  url "https://downloads.sejda-cdn.com/sejda-desktop_#{version}#{arch}.dmg",
      verified: "downloads.sejda-cdn.com/"
  name "Sejda PDF Desktop"
  desc "PDF editor"
  homepage "https://www.sejda.com/en/desktop"

  livecheck do
    url :homepage
    regex(/mac\s*:\s*["']sejda[._-]desktop[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Sejda PDF Desktop.app"

  zap trash: [
    "~/.sejda",
    "~/.sejda-desktop",
    "~/Library/Application Support/Sejda PDF Desktop",
    "~/Library/Preferences/com.sejda.sejda-desktop.plist",
    "~/Library/Saved Application State/com.sejda.sejda-desktop.savedState",
  ]
end
