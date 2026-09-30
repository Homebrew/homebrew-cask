cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "28.4.0.0"
  sha256 arm:   "1757f72806928ecc5717b6bc2fbdcd2bab63be8fef7e007b08ac41d44a2deca1",
         intel: "8b1be790191b51fe616190954ab2f33f3fb513a5d63f8ec927ccf1c68e0ac1ae"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg",
      referer: "https://www.jamovi.org/download.html"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  # The download page will redirect to the homepage unless a `referer` is used.
  livecheck do
    url "https://www.jamovi.org/download.html",
        referer: "https://www.jamovi.org/"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.jamovi.jamovi.sfl*",
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
