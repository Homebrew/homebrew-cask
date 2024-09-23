cask "sejda-pdf" do
  version "7.7.4"
  sha256 "1b9e2b03dd855670b243b34fc9f17636b08d6fd602280270868c89b24eb8632b"

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
