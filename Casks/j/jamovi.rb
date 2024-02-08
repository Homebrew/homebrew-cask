cask "jamovi" do
  version "2.4.12.0"
  sha256 "5a67f2de28ae9afaa117474e257ecb9d04aed000eab1f7e33704ad5cfe4e2eed"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  auto_updates true

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi/",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState/",
  ]
end
