cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.9.5"
  sha256 arm:   "afc60fb03ba09f088c1be3cf567a45bf9f50516675e2fbcc172f625336ce95fe",
         intel: "036a5b2826ecbccdba63b3faf2f21cd74cb38eb260477a68631209dbc7722916"

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
