cask "jamovi" do
  version "1.6.16.0"
  sha256 "bad4c86854b9932889d5cb03d42647a1bd89f001443eb6718b28d094c55d8f4a"

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
