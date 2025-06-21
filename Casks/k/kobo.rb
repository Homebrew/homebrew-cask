cask "kobo" do
  version :latest
  sha256 :no_check

  url "https://cdn.kobo.com/downloads/desktop/kobodesktop/kobosetup.dmg"
  name "Kobo"
  desc "Desktop reader for Kobo eBooks"
  homepage "https://www.kobo.com/desktop"

  livecheck do
    skip "unversioned QT application"
  end

  app "Kobo.app"

  zap trash: [
    "~/Library/Application Support/Kobo",
    "~/Library/Preferences/com.kobo.Analytics.plist",
    "~/Library/Preferences/com.kobobooks.Kobo Desktop Edition.plist",
    "~/Library/Saved Application State/com.kobo.desktop.kobo.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
