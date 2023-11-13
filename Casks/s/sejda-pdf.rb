cask "sejda-pdf" do
  version "7.6.6"
  sha256 "627081615fbe1576b47d0cf4277ebc190d7c56f34576a8ee1e90a56a97395e5c"

  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg",
      verified: "sejda-cdn.com/"
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
