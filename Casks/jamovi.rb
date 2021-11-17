cask "jamovi" do
  version "2.2.2.0"
  sha256 "ab9fac0c5313888fb78c01af5cce74edb905a2015e0817b43003815ec8cfb773"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(%r{href=.*?/jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg}i)
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
