cask "jamovi" do
  version "2.0.0.0"
  sha256 "2d01772d5e8f33d4dbb9abf41cba4d2729cac6f0c86d1d8140bc6b382be6943f"

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
