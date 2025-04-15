cask "sejda-pdf" do
  version "7.8.6"
  sha256 "f22fc3fa2cd56a28bdf25e9066359b4284c36ffd26ec312f978128505c2580fc"

  url "https://downloads.sejda-cdn.com/sejda-desktop_#{version}.dmg",
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

  caveats do
    requires_rosetta
  end
end
