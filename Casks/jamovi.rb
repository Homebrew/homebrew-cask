cask "jamovi" do
  version "1.8.2.0"
  sha256 "ccf1d84cc06c7026f913e54606512daaed300b2b925759c5302728c4289bc360"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  name "jamovi"
  desc "Free and open statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    strategy :page_match
    regex(%r{href=.*?/jamovi-(\d+(?:\.\d+)*)-macos\.dmg}i)
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
