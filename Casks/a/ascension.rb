cask "ascension" do
  version "3.0.0"
  sha256 "b21598b455878b997a08c88ef1c800eef2ad648ca672228db90ece0754d5e492"

  url "https://github.com/ansilove/Ascension/releases/download/v#{version}/Ascension_v#{version}.zip"
  name "Ascension"
  desc "ANSI/ASCII art viewer"
  homepage "https://github.com/ansilove/Ascension"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "Ascension.app"

  zap trash: [
    "~/Library/Application Support/Ascension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.byteproject.ascension.sfl*",
    "~/Library/Preferences/com.byteproject.Ascension.plist",
    "~/Library/Saved Application State/com.byteproject.Ascension.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
