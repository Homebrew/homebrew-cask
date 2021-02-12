cask "jamovi" do
  version "1.6.13.0"
  sha256 "2d24336947f491e3cbc24b514e7d1ffe6c202585dc32d895ca489116c53c8e90"

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
