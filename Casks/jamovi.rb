cask "jamovi" do
  version "1.6.12.0"
  sha256 "f487a6400f16df7e2035e2dee37fc1f8c570d7db2c266a34a24a7417fccc4340"

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
