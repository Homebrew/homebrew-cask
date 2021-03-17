cask "jamovi" do
  version "1.6.18.0"
  sha256 "148e9e9dc56b9ed2833e494b90c836dc05cf1afa8091901252179389d608509f"

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
