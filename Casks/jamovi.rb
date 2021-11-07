cask "jamovi" do
  version "2.0.1.0"
  sha256 "eebfde935ebd9ab939dc60cf2be05acd8026adf66ac7361485af2b26bb69d05a"

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
