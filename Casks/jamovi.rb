cask "jamovi" do
  version "1.2.27.0"
  sha256 "3c1621f407849a1bd0d64c5eda424010debdc5307669ae1ed5dfd46c905ba84d"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  appcast "https://www.jamovi.org/download.html",
          must_contain: "solid</td><td>.dmg</td><td>#{version.chomp(".0")}"
  name "jamovi"
  desc "Free and open statistical software"
  homepage "https://www.jamovi.org/"

  auto_updates true

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi/",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState/",
  ]
end
