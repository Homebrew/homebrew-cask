cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.9.7"
  sha256 arm:   "805ecbac566da967244e826e2e10cca0821469522e301d4fbcebb25292d6d240",
         intel: "1c09a1db05da9a63cf9eab9268aae65747d89f9f389507217d79b4a31255c050"

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
