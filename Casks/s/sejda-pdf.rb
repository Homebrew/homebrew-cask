cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.8.6"
  sha256 arm:   "3cedd0aa2dd65f124222038b5779eb446f8a7346408ad20e914f3b17926606a1",
         intel: "f22fc3fa2cd56a28bdf25e9066359b4284c36ffd26ec312f978128505c2580fc"

  url "https://downloads.sejda-cdn.com/sejda-desktop_#{version}#{arch}.dmg",
      verified: "downloads.sejda-cdn.com/"
  name "Sejda PDF Desktop"
  desc "PDF editor"
  homepage "https://www.sejda.com/en/desktop"

  livecheck do
    url :homepage
    regex(/mac\s*:\s*["']sejda[._-]desktop[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Sejda PDF Desktop.app"

  zap trash: [
    "~/.sejda",
    "~/.sejda-desktop",
    "~/Library/Application Support/Sejda PDF Desktop",
    "~/Library/Preferences/com.sejda.sejda-desktop.plist",
    "~/Library/Saved Application State/com.sejda.sejda-desktop.savedState",
  ]
end
